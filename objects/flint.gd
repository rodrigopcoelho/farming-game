extends Node2D



var player_in_area = false

@export var item: InvItem
var player = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if player_in_area:
		if Input.is_action_just_pressed("space"):
			player.collect(item)
			self.queue_free()


func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		player_in_area = true
		player = body

func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		player_in_area = false
