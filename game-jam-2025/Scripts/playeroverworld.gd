extends CharacterBody2D


const SPEED = 3500

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

@export var movement_speed : float = 500
var direction : Vector2
	
func _physics_process(delta: float) -> void:
	
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")
	
	if direction.x:
		velocity.x = direction.x * SPEED
		if direction.x > 0:
			sprite.play("Walk")
			sprite.flip_h
		if direction.x < 0:
			sprite.play("Walk")
			sprite.flip_h
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction.y:
		velocity.y = direction.y * SPEED
		if velocity.y > 0: 
			sprite.play("move_forward")
		else:
			sprite.play("move_back")
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		sprite.play("Idle")

	move_and_slide()
