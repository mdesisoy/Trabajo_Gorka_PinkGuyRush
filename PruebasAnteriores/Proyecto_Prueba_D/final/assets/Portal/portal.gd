extends Area2D

export (String) var escena

func _on_portal_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://final/scenes/Level_"+escena+".tscn")
