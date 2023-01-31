extends KinematicBody2D

var playerGravity = 800
var playerSpeed = 200
var playerJump = 400
var velocity


func _ready():
	velocity = Vector2.ZERO
	
func _process(delta):
	if Input.is_action_just_pressed("reload_scene"):
		get_tree().reload_current_scene()

func _physics_process(delta):
	velocity.y += playerGravity * delta

	if Input.is_action_pressed("move_left"):
		velocity.x = -playerSpeed
		$PlayerAnimation.play("Run")
		
		$RunSprite.flip_h = true
		$IdleSprite.flip_h = true
		$JumpSprite.flip_h = true
		
		$IdleSprite.hide()
		$RunSprite.show()
		$JumpSprite.hide()
		if Input.is_action_pressed("run"):
			velocity.x -= 200
			$PlayerAnimation.playback_speed = 2
		else:
			$PlayerAnimation.playback_speed = 1
	elif Input.is_action_pressed("move_right"):
		velocity.x = playerSpeed
		$PlayerAnimation.play("Run")
		
		$RunSprite.flip_h = false
		$IdleSprite.flip_h = false
		$JumpSprite.flip_h = false
		
		$IdleSprite.hide()
		$RunSprite.show()
		$JumpSprite.hide()
		if Input.is_action_pressed("run"):
			velocity.x += 200
			$PlayerAnimation.playback_speed = 2
		else:
			$PlayerAnimation.playback_speed = 1
	else:
		velocity.x = 0
		$PlayerAnimation.play("Idle")
		
		$IdleSprite.show()
		$RunSprite.hide()
		$JumpSprite.hide()
		$PlayerAnimation.playback_speed = 1

	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y -= playerJump
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
