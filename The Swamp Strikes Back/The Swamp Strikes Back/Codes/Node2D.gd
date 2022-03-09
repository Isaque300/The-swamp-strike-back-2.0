extends KinematicBody2D


var speed = 175
var velocity =Vector2.ZERO

onready var AnimacaoJogador = $AnimationPlayer

onready var AnimacaoJogador2 = $AnimationPlayer2

func _physics_process(delta):
	AnimacaoJogador2.play("parado")
	if Input.is_action_pressed("ui_right"):
		
		AnimacaoJogador.play("jorge andando direita")
		
		velocity.x = speed
	
	elif Input.is_action_pressed("ui_left"):
		
		AnimacaoJogador.play("jorge andando esquerda")
	
		velocity.x = -speed
	else:
		
		
		
		velocity.x = 0
		
	if Input.is_action_pressed("ui_down"):
		#$AudioStreamPlayer.play()
		velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		
		AnimacaoJogador2.play("subindo")
		
		velocity.y = -speed
	else:
		
	
		
		velocity.y = 0
	move_and_slide(velocity)
