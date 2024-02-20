extends Control

@onready var inv: Inv = preload("res://inventory/playerInv.tres")
@onready var slots: Array = $Sprite2D/NinePatchRect/GridContainer.get_children()
@onready var bar: Array = $Sprite2D2/GridContainer.get_children()

@onready var menu = $Sprite2D
var is_open = false

func _ready():
	inv.update.connect(update_slots)
	update_slots()
	close()
	

func update_slots():
	for i in range(min(inv.slots.size(), slots.size())):
		slots[i].update(inv.slots[i])
		if i < bar.size():
			bar[i].update(inv.slots[i])

func _process(_delta):
	if Input.is_action_just_pressed("i"):
		
		if is_open:
			close()
		else:
			open()
	
func open():
	menu.visible= true
	is_open= true
	
func close():
	menu.visible= false
	is_open= false
