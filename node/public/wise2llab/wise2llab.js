/* jshint jquery: true, latedef: nofunc  */

/*
 * converts old wise projects from veritas to llab topics as well as possible.
 * llab.b  (build)
 * 
 */

// VIA BROWSER< NOT NODE
// requires js-render, jquery

var Wise2Lab = (function($) {

    var memyself = {};



    // ///////////////////////////////////////
    // // project json stuff
    // ///////////////////////////////////////

    var indent_string = "    "; // how big an indent in topic files
    var topicfile = "";
    var i = 0;
    var targetdir;

    function wiseproj2llabtopic(projjson, target) {
        topicfile = "";
        i=0;
        var proj;
        clearerr();
        try {
            proj = jQuery.parseJSON(projjson);
        } catch (err) {
            adderr("That project json didn't parse", err);
            throw new Error();
        }

        target = String(target);
        if (target === "undefined" || target.trim() == "") {
            targetdir = "XXREPLACEXX/"
        } else {
            targetdir = target;
        }
        // TODO: put a slash at the end if there isn't one already


        append("title:", proj.title);
        terpri();
        append("{");
        append("h2:", "Activities");
        terpri();

        var nodes = {};
        proj.sequences.forEach(function(item) {
            if (nodes.hasOwnProperty(item.identifier)) {
                adderr("duplicate identifier in project", "identifier: "
                        + item.identifier + " getting replaced now...");
            }
            nodes[item.identifier] = item;
        });
        proj.nodes.forEach(function(item) {
            if (nodes.hasOwnProperty(item.identifier)) {
                adderr("duplicate identifier in project", "identifier: "
                        + item.identifier + " getting replaced now...");
            }
            nodes[item.identifier] = item;
        });

        nodes[proj.startPoint].refs.forEach(function(child) {
            doWiseNode(nodes[child], 0, nodes);
        });

        return (topicfile);
    }

    // node is a proj sequence or node
    function doWiseNode(node, numindent, nodes) {
        if (node.type === "sequence") {
            terpri();
            indent(numindent, "heading: ", getNodeTitle(node));
            node.refs.forEach(function(child) {
                doWiseNode(nodes[child], numindent + 1, nodes);
            });

            // } else if (node.type === "HtmlNode") {
            //

        } else {
            // non sequence
            indent(numindent, getIconType(node["class"]), ": ",
                    getNodeTitle(node), " [", targetdir, getNodeRef(node.ref),
                    "]");
        }
    }


    // llab stock icon types are
    // .group, .reading, .extresource, .video, .forum,.resource,
    // .assignment, .homework, .quiz , brainstorm
    // wise class types include
    // brainstorm, cartoon, codeit, curriculum, display, fillblank, homework,
    // instantquiz, intro, matchsequence, movie, multiplechoice, null,
    // openresponse,
    // qadiscuss, simulation, summary
    function getIconType(nodeclass) {
        // should never get "sequence" here, you know

        switch (nodeclass) {

        case "cartoon":
        case "codeit":
            return "codeit";
        case "movie":
            return "video";
        case "display":
            return "display";
        case "simulation":
            return "simulation";
        case "cartoon":
        case "summary":
            return "summary";
        case "openresponse":
        case "fillblank":
            return "fillblank";
        case "homework":
            return "homework";
        case "intro":
        case "curriculum":
            return "resource";
        case "matchsequence":
            return "matchsequence";
        case "brainstorm":
        case "qadiscuss":
            return "brainstorm";
        case "multiplechoice":
        case "instantquiz":
            return "quiz";
        default:
            // uh oh
            adderr("unknown node class", nodeclass);
            return ("WISE_" + nodeclass);
        }
    }

    function getNodeTitle(node) {
        // change brackets into parens
        var title = node.title;
        title = title.replace(/\[/g, "(");
        title = title.replace(/\]/g, ")");
        // title.replace
        return (title);
    }


    function getNodeRef(wiseref) {
        return (wiseref.substring(0, wiseref.length - 3) + ".html");
    }

    // topicfile output generation. Here there be ugliness for multiarg
    // any number of string args
    function append() {
        var output = "";
        for (i = 0; i < arguments.length; i++) {
            output += arguments[i] + " ";
        }
        output += "\n";
        topicfile += output;

    }

    function terpri() {
        topicfile += "\n";
    }

    // gets N (number of indents) as first argument, then any number of string
    // args to write
    function indent() {
        // gets N (number of indents) as first argument, then any number of
        // string args to write
        var output = "";
        var numrepeat = arguments[0];
        for (i = 0; i < numrepeat; i++) {
            output += indent_string;
        }
        // start at 1 because already got first argument
        for (i = 1; i < arguments.length; i++) {
            output += arguments[i];
        }
        output += "\n";
        topicfile += output;
    }



    // /////////////////////
    // // template stuff in general
    // //////////////////////

    var deferreds = {}; // collect up deferreds from all ajax calls

    $.views.settings.allowCode = true;
    $.views.converters("tolower", function(val) {
        return val.toLowerCase();
    });
    // removes the \n and white space stuff
    $.views.converters("clean", function(val) {
        // keep the new lines why not
        val = val.replace(/\t/g, " ");
        val = val.replace(/  +/g, " ");
        return val;
    })

    // ////////////////////
    // / multiple choice
    // ////////////////////

    // get the wisemc template
    deferreds['wisemc'] = $.get("./templates/mc_assdatadiv_template.html", "",
            function(data) {
                $.templates("wisemc", data)
            }, "html");


    // takes in wise .mc json, returns the llab .assessment-data div, not the
    // full html page
    // NOTE, depends on the template above having been loaded.
    function wisemc2llabdiv(wisemcjson) {
        var wisemc = {};
        clearerr();
        try {
            wisemc = jQuery.parseJSON(wisemcjson);
        } catch (err) {
            adderr("That wise .mc json didn't parse", err);
        }
        // TODO -- put file name here, or something
        wisemc['identifier'] = "UNUSED";
        var output = $.render["wisemc"](wisemc);

        return output;
    }


    // ///////////////////////////
    // // brainstorm
    // ///////////////////////////

    // get the wisemc template
    deferreds['wisebs'] = $.get("./templates/bs_bsdatadiv_template.html", "",
            function(data) {
                $.templates("wisebs", data)
            }, "html");

    function wisebs2llabdiv(wisebsjson) {
        var wisebs = {};
        clearerr();
        try {
            wisebs = jQuery.parseJSON(wisebsjson);
        } catch (err) {
            adderr("That wise .bs json didn't parse", err);
        }
        // does prompt need <p>s added?
        var prompt = wisebs.assessmentItem.interaction.prompt;
        if (!(prompt.includes("</p>"))) {
            wisebs.assessmentItem.interaction.prompt = "<p> " + prompt
                    + " </p>";
        }
        // TODO -- put file name here, or something
        var output = $.render["wisebs"](wisebs);

        return output;
    }



    // ///////////////////////////
    // // match sequence
    // ///////////////////////////
    
    // hack right now, just embedding the json directly in a script tag.
    // eventually need to fix up matchsequece_all.js, a new template, and this
    // to generate an html div here and parse that div back into json in matchsequence_all

    deferreds['wisemsembedded'] = $.get(
            "./templates/ms_msdatadiv_embedded_template.html", "", function(
                    data) {
                $.templates("wisebs", data)
            }, "html");


    function wisems2llabdiv(wisemsjson, div_index_on_page) {
        var wisems = {};
        var i = div_index_on_page || 0; // default value
        clearerr();
        try {
            wisems = jQuery.parseJSON(wisemsjson);
        } catch (err) {
            adderr("That wise .ms json didn't parse", err);
        }
        
        
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
        var output = $.render["wisemsembedded"](wisems);

        return output;
    }

    



    // //////////////////////////////////////////
    // exports
    // /////////////////////////////////////////
    //memyself["convert_file"] = convert_file;
    
    memyself["indent_string"] = indent_string;
    memyself["wiseproj2llabtopic"] = wiseproj2llabtopic;
    memyself["wisemc2llabdiv"] = wisemc2llabdiv;
    memyself["wisebs2llabdiv"] = wisebs2llabdiv;
    // todo something with the arrme deferreds we've collected...
    memyself["deferreds"] = deferreds;
    return memyself;

}(jQuery));
        
//module.exports = Wise2Lab;
