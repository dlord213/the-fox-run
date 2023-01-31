extends Control

var timer = Timer.new()

func _ready():
	timer.connect("timeout", self, "_backMenu")
	timer.wait_time = 3
	timer.one_shot = true
	add_child(timer)
	timer.start()


func _process(delta):
	pass

func _backMenu():
	get_tree().change_scene("res://MainMenuInterface.tscn")
