extends Area2D
var nervios := true
func _process(delta: float) -> void:
	if nervios:
		$Sprite2D.rotate(0.1)
	else:
		position.y -= 10

func _on_body_entered(body: Node2D) -> void:
	nervios = false
	
	
