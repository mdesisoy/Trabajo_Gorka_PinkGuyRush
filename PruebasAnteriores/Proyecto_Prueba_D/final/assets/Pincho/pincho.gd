extends Node2D

export (int) var damage = 10

func _on_Area2D_area_entered(area):
	if area.get_parent().is_in_group("player"):
		area.get_parent().health -= damage
		area.get_parent().motion.y = area.get_parent().JUMP_H/1.5
		area.get_parent().rojo()
		area.get_parent().vida_cero()
