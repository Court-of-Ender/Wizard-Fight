extends Node2D

@onready var character_health: Label = $"Node/Character Health"
@onready var enemy_health: Label = $"Node/Enemy Health"


func _process(delta: float) -> void:
	character_health.text = str(Global.PlayerHealth)
	enemy_health.text = str(Global.EnemyHealth)
