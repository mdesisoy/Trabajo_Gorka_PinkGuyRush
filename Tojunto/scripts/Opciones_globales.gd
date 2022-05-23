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
	
func update_music_vol(vol):
	AudioServer.set_bus_volume_db(0, vol)
	Guardar.game_data.music_vol= vol
	Guardar.save_data()
