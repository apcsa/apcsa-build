/**
 * New node file
 */

var DEBUG = true;


var fs = require('fs');
var path = require('path');
var Wise2Lab = require('./wise2llab_nodelib');



var args = process.argv.slice(2);

if (DEBUG) {
    console.log("ARGUMENTS: ");
    args.forEach(function(val, index, array) {
        console.log(index + ': ' + val);
    });
}

var sourcedir = args[0];
var targetdir = args[1];
var ext_filter = args[2];

var files = fs.readdirSync(sourcedir);

if (DEBUG) {
    files.forEach(function(val, index, array) {
        console.log(index + ": " + val);
    });
}

files.forEach(function(val, index, array) {
    if (DEBUG) {
        console.log("process: " + val);
    }
    var ext = path.extname(val);
    if (DEBUG) {
        console.log(" ext: " + ext);
    }
    ext = ext.slice(1);
    if (ext_filter && ext_filter !== ext) {
        if (DEBUG) {
            console.log("  ignoring!");
        }
        return;
    }
    var valpath = sourcedir + "/" + val;
    var filecontents = fs.readFileSync(valpath, 'utf8');
    var contents = Wise2Lab.convert_file(ext, filecontents);
    if (DEBUG) {
        console.log(  "contents: " + contents);
    }
});

