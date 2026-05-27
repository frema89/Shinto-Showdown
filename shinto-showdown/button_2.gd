extends Button
@onready var nplayers = $"../Button"

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Level1.tscn")
	
