extends TileMap


func _ready():
	pass
	
func _process(delta):
	pass
	
func _input(event: InputEvent):
	if !(event is InputEventMouseButton)||!event.pressed:
		return
	
	#print(event)
	var clickedonmap=local_to_map(get_local_mouse_position())
	print(clickedonmap)
