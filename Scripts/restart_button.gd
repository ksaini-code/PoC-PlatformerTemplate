extends Button

func _ready():
	text = "Restart"
	
func _on_pressed():
	GameManager.restart_game()
