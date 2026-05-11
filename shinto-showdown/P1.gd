extends CharacterBody2D

var SPEED = 200.0
const ADDSPEED = 20.0
const JUMP_VELOCITY = -400.0
const ROLL_BOOST = 300.0


@onready var player_sprite: AnimatedSprite2D = $AnimatedSprite2D

var rolltime = 1
var jumps = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	
	if is_on_floor():
		jumps = 0
	# Handle jump.
	if Input.is_action_just_pressed("jumpP1") and jumps < 2:
		jumps += 1
		velocity.y = JUMP_VELOCITY


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var direction := Input.get_axis("leftP1", "rightP1")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction > 0:
		player_sprite.flip_h = false
		
	elif direction < 0:
		player_sprite.flip_h = true
		
	if Input.is_action_pressed("dashP1"):
		if not is_on_floor():
			if rolltime < 0.8:
				velocity.x = direction * ROLL_BOOST
				rolltime += delta
			if rolltime > 0.8:
				rolltime = 0.8
			
	else: 
		rolltime = 0
		
	if Input.is_action_pressed("dashP1"):
		if not is_on_floor():
			player_sprite.animation = "Dash"
	elif Input.is_action_pressed("jumpP1"):
		player_sprite.animation = "Jump"
	
	elif Input.is_action_pressed("rightP1") or Input.is_action_pressed("leftP1"):
		player_sprite.animation = "Run"
		
	else:
		player_sprite.animation = "Idle"
	move_and_slide()

	if position.y > 300:
		if position.x > 1350:
			position = Vector2(1150, -20)
		elif position.x > 700:
			position = Vector2(600, -175)
		elif position.x < 2000:
			position = Vector2(-50, -20)
		else:
			position = Vector2(-50, -20)
	
	if get_node("../Var").finish == true:
		print("Test")
		get_node("../Var").finish = false
