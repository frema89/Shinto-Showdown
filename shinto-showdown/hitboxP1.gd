extends Area2D

func _on_area_entered(area: Area2D) -> void:
	get_node("../../Var").P1hit = true
