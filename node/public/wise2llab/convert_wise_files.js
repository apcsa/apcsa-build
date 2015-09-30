/**
 * New node file
 */

// NOTE: BUG MAKING TOPIC FILES -- if basename ends in number, removes trailing slash

var DEBUG = false;


var fs = require('fs');
var path = require('path');
var Wise2Lab = require('./wise2llab_nodelib');


//TODO -- doesn't change every img tag, just first one!!


// call from node, command line
//  arg1 source dir, relative to \cygwin\home\nate\git\apcsa\apcsa-r\main\cur_wise\ ,
       //where to read wise files
       // eg, c1\lesson2_first_Programming
//  arg2 target dir,relative to \cygwin\home\nate\git\apcsa\apcsa-r\main\cur\
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


// 
if (!sourcedir) {
    throw "Empty source dir argument";
}
if (sourcedir === targetdir) {
    throw "Same source and target dirs!";
}
sourcedir = "/cygwin/home/nate/git/apcsa/apcsa-r/main/cur_wise/" + sourcedir;
targetdir = "/cygwin/home/nate/git/apcsa/apcsa-r/main/cur/" + targetdir;
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
    nodedata_lesson = String.valueOf(nodedata_lesson);
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



// startmeup

var files = fs.readdirSync(sourcedir);

if (DEBUG) {
    files.forEach(function(val, index, array) {
        console.log(index + ": " + val);
    });
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
    if (ext_filter && ext_filter !== ext) {
        if (DEBUG) {
            console.log("  ignoring!");
        }
        NUM_IGNORED += 1;
        ignored_files.push(val);
        return;
    }
    var valpath = sourcedir + "/" + val;
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
        console.log("contents: " + contents);
    }
    
    var targetPath = targetdir + "/" + basename + ".html";
    if (fs.existsSync(targetPath)) {
        if (DEBUG) {
            console.log("File already exists -- not overwriting: " + targetPath);
        }
        NUM_IGNORED += 1;
        ignored_files.push("(file exists) " + val);
        return;
    }

    if (!DEBUG) {
            fs.writeFileSync(targetPath, contents);
        }
    NUM_PROCESSED += 1;
    
});

console.log("Processed " + NUM_PROCESSED + " files.");
console.log();
console.log("Ignored " + NUM_IGNORED + " files: ");
ignored_files.forEach(function(element) { console.log("  " + element) });

