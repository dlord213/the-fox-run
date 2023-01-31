extends Node2D


var levelText


# Called when the node enters the scene tree for the first time.
func _ready():
	levelText = $UICanvas/LevelTextContainer/HBoxContainer/LevelText

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	levelText.text = "FAMILIARIZE THE CONTROLS"
	$MovingTiles/AnimationPlayer.play("Moving")
	$MovingTiles2/AnimationPlayer.play("Moving")
	$MovingTiles4/AnimationPlayer.play("Moving")

func _on_CameraScaleChange_body_entered(body):
	$Player/PlayerBody/Camera2D.zoom = Vector2(0.8, 0.8)
	print("CAMERA CHANGED")


func _on_MovingCollision_body_entered(body):
	$MovingTiles3/AnimationPlayer.play("Moving")


func _on_RestartArea_body_entered(body: PhysicsBody2D):
	get_tree().reload_current_scene()


func _on_MovingRestartArea_body_entered(body):
	get_tree().reload_current_scene()


func _on_ChangeLevelArea_body_entered(body):
	get_tree().change_scene_to(load("res://MainMenuInterface.tscn"))
