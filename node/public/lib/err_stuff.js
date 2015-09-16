//

function adderr(msg, err) {
	$("#err").append("<b>" + msg + "</b> :: " + err + "<br><hr><br>").show();
}
function clearerr() {
	$("#err").empty().hide();
}