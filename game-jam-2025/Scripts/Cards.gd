extends Area2D

# Called when the node enters the scene tree for the first time.
var original_position: Vector2
var nodepos: int = -1
@onready var node_2d: Node2D = $"../.."
@onready var Fireball: CharacterBody2D = $"."
@onready var Character: AnimatedSprite2D = $AnimatedSprite2D

func _ready():
	# Auto-connect signals so you don't have to do it in the edito
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))
	connect("input_event", Callable(self, "_on_input_event"))

func _on_mouse_entered() -> void:
	#print("Up")
	position.y -= 10
	pass # Replace with function body.


func _on_mouse_exited() -> void:
	#print("down")
	position.y += 10
	pass # Replace with function body.
	
func Attack():
	Global.EnemyHealth -= 20
	Character.Castinganim()
	Fireball.Animation()
	print(Global.EnemyHealth)
	
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		#print("Area2D clicked!")
		Attack()
		if position.x == -107:
			nodepos=0
		if position.x == -58:
			nodepos=1
		if position.x == 54:
			nodepos=2
		if position.x == 166:
			nodepos=3
		if position.x == 281:
			nodepos=4	
		node_2d.add_new_card(nodepos)
		queue_free()
		pass
