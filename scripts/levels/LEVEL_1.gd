extends Node2D

var triggerMove

func _ready():
	triggerMove = 0


func _process(delta):
	$UICanvas/LevelTextContainer/HBoxContainer/LevelText.text = "Level 1"

func _on_MovingTiles_body_entered(body):
	$AnimationTree.set("parameters/Add3/add_amount", 1)
	print("move now")

func _on_RestartArea_body_entered(body):
	get_tree().reload_current_scene()

func _on_MovingTiles2_body_entered(body):
	$AnimationTree.set("parameters/Add3 2/add_amount", 1)

func _on_KeyCollision_body_entered(body):
	$KeyCollision/AnimatedSprite.hide()
	$AnimationTree.set("parameters/Add2 2/add_amount", 1)


func _on_ProceedArea_body_entered(body):
	get_tree().change_scene_to(load("res://scenes/levels/BEFORE_LEVEL_2.TSCN"))
