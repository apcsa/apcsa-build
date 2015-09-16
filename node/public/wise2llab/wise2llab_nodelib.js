/* jshint jquery: true, latedef: nofunc  */

/*
 * converts old wise projects from veritas to llab topics as well as possible.
 * llab.b  (build)
 * 
 */

// NODE 

var njsrender = require('node-jsrender');
// var jsrender = require('jsrender');
var fs = require('fs');
var $ = require('jquery');


//function get_template(path) {
//    var tmpl = fs.readFileSync(path, 'utf8');
//    return (jsrender.templates(tmpl));
//}



njsrender.loadFileSync('#emptypage','./templates/empty-curriculum-page.html');
// type is the file extension, minus the .
// contents are the wise contents.
function convert_file(type, wisecontents, title, filename) {
    var div="";
    var data={};
    var output;
    data['title']=title;
    
    if (type == "html") {
        // ignore title from .topic - html already has it.
        wisecontents = wisecontents.replace("../../../script/loader_main.js", "/apcsa/llab/loader.js");
        
        
        return wisecontents;
    } else if (type == "ms") {
        // MS
        data['body']=wisems2llabdiv(wisecontents, 0);
        output = njsrender.render['#emptypage'](data)
        return output;
    } else if (type == "mc") {
        data['body']=wisemc2llabdiv(wisecontents, filename);
        output = njsrender.render['#emptypage'](data)
        return output;
    } else if (type == "bs") {
        data['body']=wisebs2llabdiv(wisecontents);
console.log("HERE" + data['body']);
        output = njsrender.render['#emptypage'](data);
        return output;
    } else {
        console.log("----");
        console.log("UNKNOWN FILETYPE: " + ext);
        console.log("----");
    }
}




function clean(val) {
    // keep the new lines why not
    val = val.replace(/\t/g, " ");
    val = val.replace(/  +/g, " ");
    return val;
}

if (!String.prototype.includes) {
    String.prototype.includes = function() {'use strict';
      return String.prototype.indexOf.apply(this, arguments) !== -1;
    };
  }

// ////////////////////
// / multiple choice
// ////////////////////

//var mctmpl = get_template('./templates/mc_assdatadiv_template.html');
njsrender.loadFileSync('#mctmpl','./templates/mc_assdatadiv_template_noconverters.html');

// takes in wise .mc json, returns the llab .assessment-data div, 
function wisemc2llabdiv(wisemcjson, filename) {
    var wisemc = JSON.parse(wisemcjson);
    filename = filename || "UNUSED";
    wisemc['identifier'] = filename;
    // do the converter stuff here
    wisemc['type'] = wisemc['type'].toLowerCase();
    wisemc.assessmentItem.interaction.prompt = clean(wisemc.assessmentItem.interaction.prompt);
    var choices = wisemc.assessmentItem.interaction.choices;
    choices.forEach(function(choice, i, array) {
        array[i].text = clean(array[i].text);
        array[i].feedback = clean(array[i].feedback);
    })
    //var output = mctmpl(wisemc);
    var output = njsrender.render['#mctmpl'](wisemc);
    
    return output;
}


// ///////////////////////////
// // brainstorm
// ///////////////////////////

// get the wisebs template
//var bstmpl = get_template("./templates/bs_bsdatadiv_template.html");
njsrender.loadFileSync('#bstmpl', "./templates/bs_bsdatadiv_template_noconverters.html");
        
function wisebs2llabdiv(wisebsjson) {
    var wisebs = JSON.parse(wisebsjson);
    // does prompt need <p>s added?
    var prompt = wisebs.assessmentItem.interaction.prompt;
    if (!(prompt.includes("</p>"))) {
        wisebs.assessmentItem.interaction.prompt = "<p> " + prompt + " </p>";
    }
    // do converter work
    wisebs.assessmentItem.interaction.prompt = clean(wisebs.assessmentItem.interaction.prompt);
    var canned = wisebs.cannedResponses;
    canned.forEach = function(val, index, array) {
        array[i] = clean(array[i]);
    }
    //var output = bstmpl(wisebs);
    var output = njsrender.render['#bstmpl'](wisebs);
    return output;
}



// ///////////////////////////
// // match sequence
// ///////////////////////////

// hack right now, just embedding the json directly in a script tag.
// eventually need to fix up matchsequece_all.js, a new template, and this
// to generate an html div here and parse that div back into json in matchsequence_all

njsrender.loadFileSync('#mstmpl', "./templates/ms_msdatadiv_embedded_template.html");

function wisems2llabdiv(wisemsjson, div_index_on_page) {
    var wisems = {};
    var i = div_index_on_page || 0; // default value
    wisems = JSON.parse(wisemsjson); // checking for errors I guess?

    // ignore the parsed json, though.
    // right now we'll do things embedded-- insert json as string
    var scripttag_value = "";
    if (i == 0) {
        // first time, gotta initialize llab_ms_myModels
        scripttag_value = scripttag_value + " var llab_ms_myModels = []; ";
    }
    scripttag_value = scripttag_value + " llab_ms_myModels[" + i + "] = "
            + wisemsjson;
    wisems["everything"] = scripttag_value;
    //var output = mstmpl(wisems);
    var output = njsrender.render['#mstmpl'](wisems);
    
    return output;
}




// //////////////////////////////////////////
// exports
// /////////////////////////////////////////
var exports = module.exports = {};
exports["convert_file"] = convert_file;


