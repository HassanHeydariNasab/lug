extends KinematicBody2D

const HEALTH = 5.0
var health = HEALTH setget set_health

func set_health(value):
	health = value
	if health < 0:
		health = 0
		queue_free()
	print(health/HEALTH)
	get_node('../Health').set_scale(Vector2(health/HEALTH, 1))

func _ready():
	pass

func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_pressed('right'):
		translate(Vector2(5, 0))
	if Input.is_action_pressed('left'):
		translate(Vector2(-5, 0))
