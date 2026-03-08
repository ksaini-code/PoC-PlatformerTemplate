extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You died! Current level: " + str(GameManager.current_level))
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	if GameManager.current_level == 2:
		print("Setting needs_respawn to true, spawn point: " + str(GameManager.level_2_spawn))
		GameManager.needs_respawn = true
	get_tree().reload_current_scene()
