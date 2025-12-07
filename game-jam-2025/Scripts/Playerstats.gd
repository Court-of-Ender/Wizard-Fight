extends Node

signal leveled_up

var health: int = 500
var damage: int = 100

var level = 1
var exp: int = 0 
var required_exp: int = 50

func get_player_stats():
	return {
		"level": level,
		"health": health,
		"damage": damage
	}
	
func add_exp(newExp):
	exp += newExp
	
func _check_and_do_level_up():
	if exp < required_exp: return
	
	level+=1
	required_exp += required_exp * 1.2
	
