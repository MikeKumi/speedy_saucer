extends RigidBody2D

var FORCE = 500

func _ready():
	pass

# Cares about global framerate
func _process(delta):
	pass

# Does not care about global framerate
func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(FORCE, 0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-FORCE, 0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0, -FORCE))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0, FORCE))
