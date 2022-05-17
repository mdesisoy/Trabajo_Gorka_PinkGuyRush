extends Popup

# Video Settings
onready var display_options = $MarginContainer/Grid/Opciones_pantalla
onready var brightness_slider = $MarginContainer/Grid/Barra_brillo


func _ready():
	display_options.select(1 if Guardar.game_data.fullscreen_on else 0)
	OpcionesGlobales.toggle_fullscreen(Guardar.game_data.fullscreen_on)
	brightness_slider.value = Guardar.game_data.brightness
	
func _on_Opciones_pantalla_item_selected(index):
	OpcionesGlobales.toggle_fullscreen(true if index == 1 else false)

func _on_Barra_brillo_value_changed(value):
	OpcionesGlobales.update_brightness(value)
