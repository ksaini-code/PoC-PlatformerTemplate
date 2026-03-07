extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
	if GameManager.current_level == 2:
		await get_tree().process_frame
		get_tree().get_root().get_node("Game/Player").global_position = GameManager.level_2_spawn
		
