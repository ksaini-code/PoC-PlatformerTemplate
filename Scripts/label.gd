extends Label

const DISPLAY_TIME = 10  # Seconds before the label disappears

func _ready() -> void:
	show_label()

func show_label() -> void:
	visible = true
	# Start the countdown timer
	await get_tree().create_timer(DISPLAY_TIME).timeout
	visible = false

func reset() -> void:
	show_label()
