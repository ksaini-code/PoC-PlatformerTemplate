extends Area2D

@export var target_position: Vector2

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		GameManager.current_level = 2
		GameManager.level_2_spawn = target_position
		body.global_position = target_position
		
