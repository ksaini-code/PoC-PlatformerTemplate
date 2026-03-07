extends Node

var score = 0
var current_level: int = 1
var level_2_spawn: Vector2 = Vector2(0, 0)

func add_point():
	score += 1
	get_tree().get_root().get_node("Game/GameManager/ScoreLabel").text = "You collected " + str(score) + " coins."
