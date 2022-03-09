extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Sobrevivencia.grab_focus()
	pass # Replace with function body.



func _on_Sobrevivencia_pressed():
	get_tree().change_scene("res://Codes/EscolhaFase.tscn")

func _on_sair_pressed():
	get_tree().quit()

