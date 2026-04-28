extends Area2D



func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
	get_node("../Main").finish = true
