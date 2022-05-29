extends WorldEnvironment

func _ready():
# warning-ignore:return_value_discarded
	OpcionesGlobales.connect("brightness_updated", self, "_on_brightness_updated")
	

func _on_brightness_updated(value):
	environment.adjustment_brightness = value
