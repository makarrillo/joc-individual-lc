extends Node2D
func _process(delta: float) -> void:
	if $jugador.position.x > 1150:
		$jugador.position.x -= 1150
		$"pt 1".position.x -= 1150
		$"pt 2".position.x -= 1150
		$"pt 3".position.x -= 1150
	if $"pt 2/DJ area".exited==-1:
		pass
	if $"pt 2/pasar a pt 3".exited == 1:
		$"pt 2".position.x -= 1150
		$jugador.position.x -= 1150
		$"pt 3".position.x -= 1150
		$"pt 2/pasar a pt 3".position = Vector2(10000,-1000)
		
	elif $"pt 2/DJ area".exited==1:
		$jugador.DP = 2
		$"pt 2/DJ area".exited =-1
		print('jugador',$jugador.DP)
		print($"pt 2/DJ area".exited)
		


	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
