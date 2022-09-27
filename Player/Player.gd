extends KinematicBody2D

const GRAVITY := 300.0
var velocity := Vector2()
const jump :=500
var canJump := false
var coins :=0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_right"):
		position.x +=5
	if Input.is_action_pressed("move_left"):
		position.x -=5
		
	velocity.y += delta * GRAVITY
	
	var motion = velocity * delta
	
	if Input.is_action_just_pressed("jump") and canJump:
		velocity.y -= jump
		canJump = false
		
	move_and_collide(motion)
	if velocity.y >= 200:
		velocity.y = 200

func _on_KinematicBody2D_mouse_entered():
	print("Body")
