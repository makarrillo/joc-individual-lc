extends Area2D


	
var exited = 0

func _on_body_entered(body: Node2D) -> void:
	exited = 1
