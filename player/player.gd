extends CharacterBody2D

@export var speed = 400
@onready var _animation_player = $AnimationPlayer

func _process(_delta):
	if Input.is_action_pressed("right"):
		_animation_player.play("walk_right")
	elif Input.is_action_pressed("left"):
		_animation_player.play("walk_left")
	elif Input.is_action_pressed("up"):
		_animation_player.play("walk_top")
	elif Input.is_action_pressed("down"):
		_animation_player.play("walk_front")
	else:
		_animation_player.stop()

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
