extends Node2D

@export var spacing: float = 100.0
@export var center_point: Vector2 = Vector2(54, 103)

func _process(delta):
	center_children()

func add_new_card():
	var enemy_scene = preload("res://Enemy.tscn")  # Load the scene
	var enemy_instance = enemy_scene.instantiate()  # Create an instance
	enemy_instance.position = Vector2(200, 150)  # Set position
	add_child(enemy_instance)  # Add to this node

func center_children():
	var children_list: Array[Node2D] = []
	for child in get_children():
		children_list.append(child)

	var count = children_list.size()
	if count == 0:
		return

	var total_width = (count - 1) * spacing
	var start_x = center_point.x - total_width / 2

	for i in range(count):
		children_list[i].position = Vector2(
			start_x + i * spacing,
			center_point.y
		)
