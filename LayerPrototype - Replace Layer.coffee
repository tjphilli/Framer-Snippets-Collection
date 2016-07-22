plugin.run = (contents, options) ->
	"""
Layer.prototype.replaceLayer = (oldLayer) ->
	_props = oldLayer.props
	_.unset _props, "image"
	_.unset _props, "backgroundColor"
	@props = _props
	@parent = oldLayer.parent
	oldLayer.destroy()

  #{contents}
	"""
