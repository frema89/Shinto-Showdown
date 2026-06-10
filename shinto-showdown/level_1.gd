extends Node2D
const Player2 = preload("res://Player2.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Level2"):
		Globals.level = 2
		get_tree().change_scene_to_file("res://Level2.tscn")



func _on_ready() -> void:
	if Globals.P2 == true:
		var player_instance = Player2.instantiate()
		player_instance.global_position = global_position 
		add_child(player_instance)
