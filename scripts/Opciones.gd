extends Popup

# Video Settings
onready var display_options = $MarginContainer/Grid/Opciones_pantalla
onready var brightness_slider = $MarginContainer/Grid/Barra_brillo


func _ready():
	
	
	func _on_Opciones_pantalla_item_selected(index):
	pass # Replace with function body.
	
	display_options.select(1 if Save.game_data.fullscreen_on else 0)
	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)
	vsync_btn.pressed = Save.game_data.vsync_on
	display_fps_btn.pressed = Save.game_data.display_fps
	max_fps_slider.value = Save.game_data.max_fps
	bloom_btn.pressed = Save.game_data.bloom_on
	brightness_slider.value = Save.game_data.brightness
	
	master_slider.value = Save.game_data.master_vol
	
	fov_slider.value = Save.game_data.fov
	mouse_slider.value = Save.game_data.mouse_sens
	


func _on_OptionButton_item_selected(index):
	GlobalSettings.toggle_fullscreen(true if index == 1 else false)


func _on_CheckButton_toggled(button_pressed):
	GlobalSettings.toggle_vsync(button_pressed)


func _on_DisplayFpsBtn_toggled(button_pressed):
	GlobalSettings.toggle_fps_display(button_pressed)
	
	
func _on_MaxFpsSlider_value_changed(value):
	GlobalSettings.set_max_fps(value)
	max_fps_val.text = str(value) if value < max_fps_slider.max_value else "max"


func _on_BloomBtn_toggled(button_pressed):
	GlobalSettings.toggle_bloom(button_pressed)
	

func _on_BrightnessSlider_value_changed(value):
	GlobalSettings.update_brightness(value)


func _on_MasterSlider_value_changed(value):
	GlobalSettings.update_master_vol(value)


func _on_FovSlider_value_changed(value):
	GlobalSettings.update_fov(value)
	fov_amount.text = str(value)
	

func _on_MouseSlider_value_changed(value):
	GlobalSettings.update_mouse_sens(value)
	mouse_sens_amount.text = str(value)



