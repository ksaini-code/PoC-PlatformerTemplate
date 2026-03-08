extends Area2D

@export var target_position: Vector2

func _on_body_entered(body) -> void:
	if body is CharacterBody2D:
		GameManager.current_level = 2
		GameManager.level_2_spawn = target_position
		GameManager.needs_respawn = false
		body.global_position = target_position
