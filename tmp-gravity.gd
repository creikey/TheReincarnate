extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var speed = 0.0
var to_move = Vector2()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process( true )

func _fixed_process(delta):
	move( Vector2(0,speed) )