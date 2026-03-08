extends Node

var score = 0
var current_level: int = 1
var level_2_spawn: Vector2 = Vector2(0, 0)
var needs_respawn: bool = false

func _process(_delta):
	if needs_respawn and current_level == 2:
		var player = get_tree().get_root().get_node_or_null("Game/Player")
		if player:
			print("Respawning player at: " + str(level_2_spawn))
			player.global_position = level_2_spawn
			needs_respawn = false

func restart_game():
	current_level = 1
	score = 0
	needs_respawn = false
	get_tree().reload_current_scene()

func add_point():
	score += 1
	get_tree().get_root().get_node("Game/GameManager/ScoreLabel").text = "You collected " + str(score) + " coins."
