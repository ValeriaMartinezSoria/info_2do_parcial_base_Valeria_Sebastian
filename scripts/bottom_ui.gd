extends TextureRect

@onready var label = $MarginContainer/HBoxContainer/Label
@onready var retry_button = $RetryButton   

var current_level = 1

func _ready():
	update_level_text()
	retry_button.visible = false   

func increment_level():
	current_level += 1
	update_level_text()

func game_over():
	print("GAME OVER")
	label.text = "Perdiste"
	retry_button.visible = true    

func set_text(new_text: String):
	label.text = new_text

func update_level_text():
	if current_level == 1:
		label.text = "Modo Toques"
	elif current_level == 2:
		label.text = "Modo Tiempo"
	else:
		label.text = "Ganaste"

func _on_retry_button_pressed():
	get_tree().reload_current_scene()
