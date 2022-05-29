extends CanvasLayer

func _process(delta):
	$Label.text = str(get_parent().get_parent().monedas)
