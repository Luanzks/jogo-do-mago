extends CharacterBody2D
var velocidade = Vector2(0,0)

func _physics_process(delta: float) -> void:

	velocidade = Vector2 (0,0)
	if Input. is_action_pressed("ui_left"):
		velocidade.x = -250
		
	if Input. is_action_pressed("ui_right"):
		velocidade.x = 250
		
	if Input. is_action_pressed("ui_up"):
		velocidade.y = -250
		
	if Input. is_action_pressed("ui_down"):
		velocidade.y = 250
		
	move_and_collide(velocidade * delta)
	

