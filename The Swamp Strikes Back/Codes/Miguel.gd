extends KinematicBody2D

onready var AnimacaoJogador = $AnimationPlayer
onready var AnimacaoJogador2 = $AnimationPlayer2

var speed = 175
var velocity =Vector2.ZERO

	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		
		AnimacaoJogador.play("direita")
		velocity.x = speed
	
	elif Input.is_action_pressed("ui_left"):
		AnimacaoJogador.play("esquerda")
		velocity.x = -speed
	else:
		
		AnimacaoJogador.stop()
		
		velocity.x = 0
		
	if Input.is_action_pressed("ui_down"):
		#$AudioStreamPlayer.play()
		AnimacaoJogador2.play("descer")
		velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		AnimacaoJogador2.play("subir")
		
		
		velocity.y = -speed
	else:
		
		AnimacaoJogador2.stop()
		velocity.y = 0
