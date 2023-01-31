extends Control


var sceneTimer = Timer.new()


func _ready():
	sceneTimer.connect("timeout", self, "changeScene")
	sceneTimer.wait_time = 4
	add_child(sceneTimer)
	sceneTimer.start()

func _process(delta):
	if sceneTimer.time_left <= 2:
		$AnimationPlayer.play("fadeTexts")

func changeScene():
	get_tree().change_scene_to(load("res://scenes/levels/TUTORIAL.tscn"))


func _on_AnimationPlayer_animation_finished(anim_name):
	$AnimationPlayer.remove_animation("fadeTexts")
