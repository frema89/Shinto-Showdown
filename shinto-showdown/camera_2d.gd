extends Camera2D
<<<<<<< Updated upstream
@onready var p1 = get_node("../../Player1")
@onready var p2 = get_node("..")
=======
>>>>>>> Stashed changes



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.P2 == true:
		if Globals.level == 1:
			var p1 = get_node("../Player1")
			var p2 = get_node("../Player2")
			position -= (position-((p1.position+p2.position)/2))*2*delta
			zoom = Vector2(clamp(1500/abs(p1.position.x - p2.position.x),0 ,1.8), (clamp(1500/abs(p1.position.x - p2.position.x),0 ,1.8)))
		elif Globals.level == 2:
			var p1 = get_node("../Player1")
			var p2 = get_node("..")
			position -= (position-((p1.position+p2.position)/2))*2*delta
			zoom = Vector2(clamp(1500/abs(p1.position.x - p2.position.x),0 ,1.8), (clamp(1500/abs(p1.position.x - p2.position.x),0 ,1.8)))
