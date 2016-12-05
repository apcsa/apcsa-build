/**
 * New node file
 */

// NOTE: BUG MAKING TOPIC FILES -- if basename ends in number, removes trailing slash

var DEBUG = false;


var fs = require('fs');
var path = require('path');
var Wise2Lab = require('./wise2llab_nodelib');


//TODO -- doesn't change every img tag, just first four!!


// call from node, command line
//  arg1 source dir, relative to /other/apcsa/dev/wise_curriculum/ ,
       //where to read wise files
       // eg, c1\lesson2_first_Programming
//  arg2 target dir,relative to ../../../curbuild/
       //where to write llab files
       // eg, c1/L2_first_programing
//  arg3 lesson number of nodedata file (wise project.json) - 
       // needsthe file in ./nodedata/lessonXX.project.json
//  arg4 filter for file type?


var args = process.argv.slice(2);

if (DEBUG) {
    console.log("ARGUMENTS: ");
    args.forEach(function(val, index, array) {
        console.log(index + ': ' + val);
    });
}

var sourcedir = args[0];
var targetdir = args[1];
var nodedata_lesson = args[2];
var ext_filter = args[3];


sourcedir = "/Users/xtitter/other/apcsa/dev/wise_curriculum/" + sourcedir;
targetdir = "../../../curbuild/" + targetdir;
if (!(fs.existsSync(sourcedir))) {
    throw ("Source dir doesn't exist");
}
if (!(fs.existsSync(targetdir))) {
    throw ("Target dir doesn't exist");
}


    
    

// nodedata crapola
if (!nodedata_lesson) {
    throw ("Nodedata lesson argument missing");
}
var nodedata_dir = "nodedata/";
if (nodedata_lesson < 10) {
    nodedata_lesson = "0" + ("" + nodedata_lesson);
} else {
    nodedata_lesson = "" + nodedata_lesson;
}
var nodedata_lesson_filename = "lesson" + nodedata_lesson + ".project.json";
var nodedata_str = fs.readFileSync(nodedata_dir + nodedata_lesson_filename, 'utf8');
var nodedata = JSON.parse(nodedata_str);
if (DEBUG) {
    console.log("parsed " + nodedata_lesson_filename + ", got " + nodedata['nodes'].length + " nodes");
}
function get_nodedata_for_file (filename, unknown) {
    nodedata['nodes'].forEach(function (node) {
       if ((node.ref === filename) || (node.ref === (filename + "ml"))) {
           // hackalicious
           unknown = node.title;
       }
    });
    return (unknown || "");
}

// WRITE OUT Le TOPIC FILE SOMEHOW

function getNodeDataByIdentifier (array, id) {
    var foundit = array.find(function(seq) {if (seq['identifier'] == id) return true;})
    return foundit || null;
}

function spaces (indent) {return " ".repeat(indent)}

// indent is number of spaces; will add 4 for each level
function addSeqAndChildren (seq, indent) {
    topic_contents += "\n" + spaces(indent) + "heading: " + seq['title'] + "\n";
    seq['refs'].forEach(function(ref) {
        var seq = getNodeDataByIdentifier(nodedata['sequences'], ref);
        seq ? addSeqAndChildren(seq, indent + 4)
            : addNode(ref, indent + 4);
    })
}
/* ICONS
 .group, .reading, .extresource, .video, .forum,
 .resource, .assignment, .homework, .quiz, .codeit,
 .simulation, .matchsequence, .fillblank, .summary,
 .brainstorm, .display
 */
function convertType (icon) {
    // TODO flesh this out, to get the new and improved icons in place
    switch (icon) {
        case "intro": return "resource";
        case "multiplechoice": return "quiz";
        case "curriculum": return "reading";
        default: return icon;
    }
}

function addNode(id, indent) {
    var node = getNodeDataByIdentifier(nodedata['nodes'], id);
    topic_contents += spaces(indent);
    if (node) {
        var title = node['title'].replace("[", "(").replace("]", ")"),
            ref = node['ref'].split('.')[0];
        topic_contents += convertType(node['class']) + ": " + title + " [/apcsa/r/cur/" +
            args[1] + "/" + ref + ".html]\n";
    } else {
        topic_contents += "//MISSING REF: " + id + "\n";
    }
}

console.log("Writing stubbed topic file, yo.");
var startseq = getNodeDataByIdentifier(nodedata['sequences'], nodedata['startPoint']);
var topic_path =  targetdir + "/L" + nodedata_lesson + ".topic";
var topic_contents = "title: Lesson " + nodedata_lesson + ": " + startseq['title'] + "\n\n";
topic_contents += "{\nh2: " + startseq['title'] + "\n\n";
startseq['refs'].forEach(function(ref) {
    var seq = getNodeDataByIdentifier(nodedata['sequences'], ref);
    seq ? addSeqAndChildren(seq, 0)
        : addNode(ref, 0);
});

fs.writeFileSync(topic_path, topic_contents);

//return;

// PROCESS FILES

var files = fs.readdirSync(sourcedir);

if (DEBUG) {
    console.log("Reading " + sourcedir + ", got " + files.length + " files.")
//    files.forEach(function(val, index, array) {
//        console.log(index + ": " + val);
//    });
} 

var NUM_PROCESSED = 0;
var NUM_IGNORED = 0;
var ignored_files = [];

files.forEach(function(val, index, array) {
    if (DEBUG) {
        console.log("process: " + val);
    }
    var ext = path.extname(val);
    var basename = path.basename(val, ext);
    if (DEBUG) {
        console.log(" ext: " + ext);
    }
    ext = ext.slice(1);
    
    // ignore this extension?
    if ((ext_filter && ext_filter !== ext) || (ext == "ht")) {
        if (DEBUG) {
            console.log("  ignoring!");
        }
        NUM_IGNORED += 1;
        ignored_files.push(val);
        return;
    }
    var valpath = sourcedir + "/" + val;
    DEBUG && console.log("getting file from " + valpath);
    var filecontents = fs.readFileSync(valpath, 'utf8');
    var title_from_metadata = get_nodedata_for_file(val);
    var contents = Wise2Lab.convert_file(ext, filecontents, title_from_metadata, val);
    
    // convert_file noped
    if (contents === "") {
        if (DEBUG) {
            console.log("  couldn't process this filetype ! --> " + basename);
        }
        NUM_IGNORED += 1;
        if (ext === "ht") {
            ignored_files.push("(ht file)" + val); 
        } else {
            ignored_files.push("(unknown ext) " + val);
        }
        return;
    }
    
    if (DEBUG) {
        //console.log("contents: " + contents);
    }

    // convert_file noped
    if (contents === "") {
        if (DEBUG) {
            console.log("  couldn't process this filetype ! --> " + basename);
        }
        NUM_IGNORED += 1;
        ignored_files.push(val);
        return;
    }
    
    var targetPath = targetdir + "/" + basename + ".html";
    if (fs.existsSync(targetPath)) {
        console.log("File already exists -- not overwriting: " + targetPath);
    } else {
        if (!DEBUG) {
            fs.writeFileSync(targetPath, contents);
        }
    }
//>>>>>>> 0ca080fce55111697775d48f2ff1322d592f6472
    NUM_PROCESSED += 1;
    
});

console.log("Processed " + NUM_PROCESSED + " files.");
console.log();
console.log("Ignored " + NUM_IGNORED + " files: ");
ignored_files.forEach(function(element) { console.log("  " + element) });

