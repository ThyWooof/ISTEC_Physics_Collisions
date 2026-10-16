extends RigidBody3D
@export var camera: Camera3D

var mouse_click: Vector2
var mouse_release: Vector2
var mouse_direction: Vector2

var ball_force: Vector3

func _input(event) -> void:
	if event is InputEventMouseButton:
		if event.pressed == true:
			mouse_click = event.position
		else:
			mouse_release = event.position
			mouse_direction = mouse_click - mouse_release
			
			ball_force = Vector3(
			camera.global_basis.x * mouse_direction.x 
			+ 
			camera.global_basis.z * mouse_direction.y)
			
			apply_central_force(ball_force / 2.5)
