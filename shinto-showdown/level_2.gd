extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Level1"):
		get_tree().change_scene_to_file("res://Level1.tscn")
