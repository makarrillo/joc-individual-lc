extends CharacterBody2D
var speed := 10
var vgravetat := 0.01
var gravetat = Vector2.UP
func _process(delta: float) -> void:
	vgravetat = vgravetat + 0.05 
	if vgravetat > 4:
		vgravetat=4
	
	var direction := Vector2.ZERO
	direction.x = Input.get_axis("L","R")
	if direction.x == 0:
		$quieto.visible = true
		$izquierda.visible = false
		$derecha.visible = false
	elif direction.x <0:
		$derecha.visible = false
		$izquierda.visible = true
		$quieto.visible = false
	elif direction.x >0:
		$izquierda.visible = false
		$derecha.visible = true
		$quieto.visible = false
	
		
	if Input.is_action_pressed("Up"):
		vgravetat = -1
	direction.y = vgravetat
	print(direction)
	
	
	
	position += direction*speed*delta
	
