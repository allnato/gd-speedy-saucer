extends Node2D

const START_POSITION: Vector2 = Vector2(281, 173)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_maze_body_exited(body: Node2D) -> void:
	body.queue_free()
	get_tree().call_deferred("reload_current_scene")
