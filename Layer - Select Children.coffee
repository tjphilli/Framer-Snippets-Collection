plugin.run = (contents, options) ->
	"""
Layer.prototype.childContaining = (str) ->
	for layer in @children
		return layer if layer.name.indexOf(str) != -1
	return -1

# This method will return an array of child layers containing a specified substring
Layer.prototype.childrenContaining = (str) ->
	layers = []
	for layer in @children
		layers.push(layer) if layer.name.indexOf(str) != -1
	return layers

# This method will return the first resulting child layer whose name begins with a specified string
Layer.prototype.childStartingWith = (str) ->
	for layer in @children
		return layer if layer.name.indexOf(str) == 0
	return -1

# This method will return an array of child layers whose names begin with a specified string
Layer.prototype.childrenStartingWith = (str) ->
	layers = []
	for layer in @children
		layers.push(layer) if layer.name.indexOf(str) == 0
	return layers

#{contents}
	"""
