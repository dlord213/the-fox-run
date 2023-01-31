extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _ready():
	pass # Replace with function body.

func _process(delta):
	$AnimationPlayer.play("SlimeAnimation")


func _on_HitCollision_body_entered(body):
	get_tree().reload_current_scene()
