extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Level2"):
		print("done")
		get_tree().change_scene_to_file("res://Level2.tscn")
