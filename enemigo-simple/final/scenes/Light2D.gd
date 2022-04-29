extends Light2D

func _ready():
	self.enabled = false
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_L:
			if self.enabled == false:
				self.enabled = true
			else:
				self.enabled = false
