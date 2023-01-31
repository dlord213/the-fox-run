extends Control

var timer = Timer.new()


func _ready():
	timer.connect("timeout", self, "_proceed_level")
	timer.wait_time = 3
	timer.one_shot = true
	add_child(timer)
	timer.start()

func _process(delta):
	pass

func _proceed_level():
	get_tree().change_scene_to(load("res://scenes/levels/LEVEL_1.tscn"))
