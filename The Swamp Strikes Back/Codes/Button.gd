extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func save(content):
	
	var file = File.new()
	
	file.open("user://save_game.dat", File.WRITE)
	file.store_string(content)
	file.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
