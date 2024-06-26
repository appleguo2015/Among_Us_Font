extends Sprite2D

var is_mouse_over = false
@onready var MyLabel = $"../Label"

func _input(event):
	if event is InputEventMouseMotion:
		is_mouse_over = global_position.distance_to(event.global_position) < 100
	else:
		is_mouse_over = false

func _process(delta):
	MyLabel.text = "By AppleGUO" if is_mouse_over else "Among Us Font"
