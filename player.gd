extends RigidBody2D

const MOVE_FORCE: int = 1000

var right: bool = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	gravity_scale = 0

func _physics_process(_delta: float) -> void:

	if Input.is_action_pressed("move_right"):
		apply_force(Vector2.RIGHT * MOVE_FORCE)

	if Input.is_action_pressed("move_left"):
		apply_force(Vector2.LEFT * MOVE_FORCE)

	if Input.is_action_pressed("move_up"):
		apply_force(Vector2.UP * MOVE_FORCE)

	if Input.is_action_pressed("move_down"):
		apply_force(Vector2.DOWN * MOVE_FORCE)
