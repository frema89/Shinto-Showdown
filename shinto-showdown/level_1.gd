extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Level2"):
		get_tree().change_scene_to_file("res://Level2.tscn")


func _on_ready() -> void:
	print ("AAAAAAAAAAAA")
