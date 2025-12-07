extends CharacterBody2D
@onready var timer: Timer = $Timer
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer_2: Timer = $Timer2
@onready var timer_3: Timer = $Timer3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.timeout.connect(_on_timer_1_timeout)
	$Timer_2.timeout.connect(_on_timer_2_timeout)
	$Timer_3.timeout.connect(_on_timer_3_timeout)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func Animation():
	timer.start()
	sprite.play("new_animation")
	
func _on_timer_1_timeout() -> void:
	sprite.play("default")
	
func _on_timer_2_timeout():
	sprite.play("new_animation_1")
	
func _on_timer_3_timeout():
	sprite.play("new_animation")
