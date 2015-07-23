/*
 * converts old wise projects from veritas to llab topics as well as possible.
 * llab.b  (build)
 * 
 */


// output
var topicfile = "";
var indent_string = "  ";

////// add a line to topicfile
// any number of string args
function a() {
	var output = "";
	for (var i=0; i < arguments.length; i++) {
        output += arguments[i] + " ";
    }
    output += "\n";
    topicfile += output;
    
}

function i() {
	var output = "";
	output += indent_string;
	for (var i=0; i < arguments.length; i++) {
        output += arguments[i] + " ";
    }
    output += "\n";
    topicfile += output;
}

function i2() {
	var output = "";
	output += indent_string + indent_string;
	for (var i=0; i < arguments.length; i++) {
        output += arguments[i] + " ";
    }
    output += "\n";
    topicfile += output;
}





// uses topicfile
function doConvert() {
	clearerr();
	var projjson = $("#wiseproj").val();
	try {
		var proj = jQuery.parseJSON(projjson); 
	}
    catch (err) {
    	showerr("That project json didn't parse, yo.", err)	
    }
    
	a("title:", proj.title);
	a("\n", "{");
	a("h2:", "Activities");
	
	var nodes = new Object();
	proj.nodes.forEach(function(item) {
		nodes[item.identifier] = item;
	})
	var sequences = new Object();
	proj.sequences.forEach(function(item){
		sequences[item.identifier] = item;
	})
	
	doNode(sequences[proj.startPoint]);
	

	// set output
	$("#topic").val(topicfile);	
}


// node is a proj sequence or node
function doNode(node) {
	if (node.type == "sequence") {
		
//	} else if (node.type == "HtmlNode") {
//
		
	} else  {
		
	}
}





// there is an error in the error handling, doh

function showerr(msg, err) {
    	$("#err")
    	  .html(msg + "<hr>" + err)
    	  .show();
}
function clearerr() {
	$("#err").hide();
}
