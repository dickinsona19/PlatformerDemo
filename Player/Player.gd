extends KinematicBody2D

const GRAVITY = 200.0
var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_right"):
		position.x +=1
	if Input.is_action_pressed("move_left"):
		position.x -=1
	velocity.y += delta * GRAVITY
	var motion = velocity * delta
	move_and_collide(motion)


func _on_KinematicBody2D_mouse_entered():
	print("Body")
