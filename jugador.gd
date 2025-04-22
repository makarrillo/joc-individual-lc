extends CharacterBody2D

var speed := 100
var vgravetat := 0.0
var gravetat = Vector2.UP
var direction = Vector2.ZERO
var DP=0

func _process(delta: float) -> void:
	vgravetat = vgravetat + 0.5
	#if vgravetat > 4:
	#	vgravetat=4


	var direction := Vector2.ZERO
	direction.x = Input.get_axis("L","R")*4
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
	if move_and_slide():
		vgravetat=0
		
	if Input.is_action_pressed("Up") and is_on_floor():
		vgravetat = -10
	if Input.is_action_pressed("Up") and DP >0 and vgravetat>=-3:
		vgravetat = -10
		DP=-1
		print('jugador script',DP)

	direction.y = vgravetat
	
	if Input.is_action_pressed("respawn"):
		position=Vector2(54,460)
	else:
		position += direction*speed*delta
	
	if position.x <0 or position.y>600:
		position=Vector2(54,460)
		
	
