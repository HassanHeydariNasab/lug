extends Area2D

func _ready():
	pass

func _on_Tree_body_entered(body):
	queue_free()
	body.health -= 1.0