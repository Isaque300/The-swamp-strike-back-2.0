extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Pantano.grab_focus()
	pass # Replace with function body.



func _on_Pantano_pressed():
	get_tree().change_scene("res://Codes/Pantano.tscn")


func _on_Deserto_pressed():
	get_tree().change_scene("res://Codes/Deserto.tscn")
	
	



func _on_Medieval_pressed():
	get_tree().change_scene("res://Codes/Medieval.tscn")


func _on_Voltar_pressed():
	get_tree().change_scene("res://Codes/CenaPricipal.tscn")
