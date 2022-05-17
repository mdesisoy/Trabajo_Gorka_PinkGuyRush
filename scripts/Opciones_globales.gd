extends Node

signal brightness_updated(value)

func toggle_fullscreen(value):
	OS.window_fullscreen = value
	Guardar.game_data.fullscreen_on = value
	Guardar.save_data()
	
func update_brightness(value):
	emit_signal("brightness_updated", value)
	Guardar.game_data.brightness = value
	Guardar.save_data()
