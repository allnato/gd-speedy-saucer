extends RigidBody2D

class_name Player
const MOVE_FORCE: int = 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale = 0
	#limit_camera()



func _physics_process(_delta: float) -> void:

	if Input.is_action_pressed("move_right"):
		apply_force(Vector2.RIGHT * MOVE_FORCE)

	if Input.is_action_pressed("move_left"):
		apply_force(Vector2.LEFT * MOVE_FORCE)

	if Input.is_action_pressed("move_up"):
		apply_force(Vector2.UP * MOVE_FORCE)

	if Input.is_action_pressed("move_down"):
		apply_force(Vector2.DOWN * MOVE_FORCE)


func limit_camera() -> void:
	$Camera2D.limit_left = 0
	$Camera2D.limit_top = 0
	$Camera2D.limit_right = 1152
	$Camera2D.limit_bottom = 648
