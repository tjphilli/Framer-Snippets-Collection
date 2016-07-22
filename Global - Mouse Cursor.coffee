plugin.run = (contents, options) ->
	"""
document.body.style.cursor = "auto"

#{contents}
	"""
