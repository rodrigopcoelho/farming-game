extends Sprite2D

@onready var player_animation = $AnimattonPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	player_animation.play("idle_front")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
