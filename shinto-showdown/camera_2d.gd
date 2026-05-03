extends Camera2D
@onready var p1 = get_node("../Player1")
@onready var p2 = get_node("../Player2")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position -= (position-((p1.position+p2.position)/2))*2*delta
	pass
