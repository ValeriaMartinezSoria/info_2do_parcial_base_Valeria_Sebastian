extends Control

@onready var retry_button = $RetryButton

func game_over():
	retry_button.visible = true

func _on_retry_button_pressed() -> void:
	get_tree().reload_current_scene()
