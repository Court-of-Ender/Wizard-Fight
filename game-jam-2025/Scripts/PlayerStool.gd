extends Area2D

func goCombat():
	get_tree().change_scene_to_file("res://Scenes/combat_scene.tscn")

func _on_body_entered(body):
	print("Go to Battle system")
	goCombat()
	#get_tree().change_scene_to_file("res://Scenes/combat_scene.tscn")
