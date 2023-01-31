extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	$UICanvas/LevelTextContainer/HBoxContainer/LevelText.text = "Level 2"


func _on_RestartArea2D_body_entered(body):
	get_tree().reload_current_scene()


func _on_CoinKeyArea_body_entered(body):
	$AnimationTree.active = true
	$CoinKeyArea/Coin.hide()


func _on_FinishGameArea_body_entered(body):
	get_tree().change_scene_to(load("res://scenes/levels/ENDING.tscn"))
