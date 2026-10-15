extends RigidBody3D

var mouse_click: Vector2
var mouse_release: Vector2
var mouse_direction: Vector2

func _input(event) -> void:
	if event is InputEventMouseButton:
		if event.pressed == true:
			mouse_click = event.position
		else:
			mouse_release = event.position
	mouse_direction = mouse_click - mouse_release
