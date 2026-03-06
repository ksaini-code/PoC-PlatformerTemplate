extends Area2D
@onready var game_manager: Node = %GameManager

func _on_body_shape_entered(_body_rid: RID, body: Node2D, _body_shape_index: int, _local_shape_index: int) -> void:
	game_manager.add_point()
	queue_free()
