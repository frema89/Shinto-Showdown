extends Area2D


func _on_area_entered(area: Area2D) -> void:
		get_node("../../Var").P2hit = true
		print("done")
