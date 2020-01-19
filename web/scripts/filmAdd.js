let fields = [
	document.getElementsByTagName("input"),
	document.getElementsByTagName("textarea")
	];

function addEvent(node, type, callback) {
	if (node.addEventListener) {
		node.addEventListener(type, function(e) {
			callback(e, e.target);
		}, false);
	} else if (node.attachEvent) {
		node.attachEvent('on' + type, function(e) {
			callback(e, e.srcElement);
		});
	}
}

function instantValidation(field) {
	if (shouldBeValidated(field)) {
	let invalid =
			(field.getAttribute("required") && !field.value) ||
			(field.getAttribute("pattern") &&
					field.value &&
					!new RegExp(field.getAttribute("pattern")).test(field.value));
		if (!invalid && field.getAttribute("aria-invalid")) {
			field.removeAttribute("aria-invalid");
		} else if (invalid && !field.getAttribute("aria-invalid")) {
			field.setAttribute("aria-invalid", "true");
		}
	}
}
addEvent(document, "change", function(e, target) {
	instantValidation(target);
});
for (let a = fields.length, i = 0; i < a; i++) {
	for (let b = fields[i].length, j = 0; j < b; j++) {
		addEvent(fields[i][j], "change", function(e, target) {
			instantValidation(target);
		});
	}
}
