extends Label

var time := 0.0
var pause = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if pause == false:
		time += delta
		get_node("../Label").text = str(time)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player1" or body.name == "Player2":
		pause = true
