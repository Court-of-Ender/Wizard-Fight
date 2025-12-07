extends Area2D



func _on_body_entered(body):
	print("Go to Battle system")
	get_tree().change_scene_to_file("res://Scenes/combat_scene.tscn")
