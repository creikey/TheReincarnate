extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var player
var motion
var velocity

var MOVE_SPEED = 200
var LEFT = Vector2(-MOVE_SPEED, 0)
var RIGHT = Vector2(MOVE_SPEED, 0)
var STILL = Vector2(0, 0)

func _ready():
	player = get_node("KinematicBody2D")
	#player.set_mode(RigidBody2D.MODE_KINEMATIC)
	velocity = STILL
	set_fixed_process(true)
	
func _fixed_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity = LEFT
	elif Input.is_action_pressed("ui_right"):
		velocity = RIGHT
	else:
		velocity = STILL
	
	player.move(velocity * delta)
	
	#if(player.is_colliding()):
	#	var n = player.get_collision_normal()
	#	motion = n.slide(motion)
	#	velocity = n.slide(velocity)
	#	player.move(motion)
