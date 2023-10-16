var parameters = new Dict("---parameters")

function bang() {
	var param_title = ""
	
	for (i = 0; i < 8; ++i) {
		param_title = parameters.get("param_" + i + "::title")
		outlet(0, i, 'set', param_title)
	}
}