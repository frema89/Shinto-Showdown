extends Label

var time_elapsed := 0.0
var counter = 1 
var is_paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_paused == false:
		time_elapsed += delta
		$Label.text = str(counter)


func _on_area_2d_body_entered(body: Node2D) -> void:
	is_paused  = true
