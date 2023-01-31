extends Control


var mainTimer = Timer.new()


func _ready():
	mainTimer.connect("timeout", self, "goToMainMenu")
	mainTimer.wait_time = 2
	mainTimer.one_shot = true
	add_child(mainTimer)
	mainTimer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func goToMainMenu():
	get_tree().change_scene_to(load("res://MainMenuInterface.tscn"))
