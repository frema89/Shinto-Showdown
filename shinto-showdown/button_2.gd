extends Button

func _on_pressed() -> void:
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://Level1.tscn")
	Globals.P2 = true
