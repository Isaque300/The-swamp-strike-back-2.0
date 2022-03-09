extends KinematicBody2D



const BolaDeFogo = preload("res://Codes/BolaDeFogo.tscn")

var speed = 175
var velocity =Vector2.ZERO

var XP = 100

var max_hp = 250

var current_hp
func _ready():

	current_hp = max_hp
	
func OnHit(damage):
	
	current_hp -= damage
	get_node("BarraDeVida").value = int((float(current_hp) / max_hp) * 100)
	if current_hp <=0:
		OnDeath ()
		
func OnDeath():
	get_node("CollisionPolygon2D").set_deferred("disaled", true)
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		
		get_node("AnimetedSprite").animation = "andando"
		get_node("AnimetedSprite").flip_h = true
	
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		
		get_node("AnimetedSprite").animation = "andando"
		get_node("AnimetedSprite").flip_h = false
		
	else:
		velocity.x = 0
		if velocity.y == 0:
			get_node("AnimetedSprite").animation = "parado"
	# if serve para parar totalmente a animção caso não estea apertando nenhum  botão
	if Input.is_action_pressed("ui_down"):
		#$AudioStreamPlayer.play()
		velocity.y = speed
		if velocity.x == 0:
			get_node("AnimetedSprite").animation = "andando"
		
		# if serve para iniciar a animação de subir
		
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -speed
		if velocity.x == 0:
			get_node("AnimetedSprite").animation = "andando"
		# if serve para iniciar a animação de descer
		
	
		
		
	else:
		velocity.y = 0
		
		
	
	
		
		#get_node("AnimetedSprite").animation = "parado"
		
		if Input.is_action_just_pressed("ui_select"):
			var fogo = BolaDeFogo.instance()
			get_parent().get_child(fogo)
			fogo.position = $Position2D.global_position
		
	move_and_slide(velocity)
