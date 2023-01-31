extends Control




# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_ExitBtn_pressed():
	get_tree().quit()


func _on_Start_pressed():
	get_tree().change_scene_to(load("res://scenes/levels/BEFORE_LEVEL_1.tscn"))

func _on_Tutorial_pressed():
	get_tree().change_scene_to(load("res://scenes/levels/BEFORE_TUTORIAL_SCENE.tscn"))
