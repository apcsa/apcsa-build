
/* wisebuild: converting from wise 2 llab
*/

var au = require('util-array');

var simplepage = function(lines) {
    var out = "";
    out += "<html><head>";
    out += "</head><body>";
    for (var i=0; i<lines.length; i++) {
        out += "<div> "+ lines[i] + "</div>";
    }
    out += "</body></html>";
    return out;
}

//var seenit = [];


var spewobject = function (obj, lines) {
//    if (seenit.has(obj)) {
//        lines.push("<color='red'>Saw this already!!!</color>");
//        return;
//    }
//    seenit.push(obj);
    for (var key in obj) {
        lines.push("<li><b>" + key + "</b>: " + obj[key] + "</li>");
//        if (typeof obj[key] === "object") {
        if (key == "headers" || key == "_parsedUrl") {
            lines.push("------ ]]]");
            spewobject(obj[key],lines);
            lines.push("[[[ ------");
        } 
    }

};

exports.index = function (req, res) {
    var lines = [];
    lines.push("=======");
    lines.push("");
    spewobject(req, lines);
	res.send(simplepage(lines));
};