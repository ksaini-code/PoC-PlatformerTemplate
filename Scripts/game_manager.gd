extends Node

var score = 0

@onready var score_label: Label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."

var current_level: int = 1
var level_2_spawn: Vector2 = Vector2(0,0)
