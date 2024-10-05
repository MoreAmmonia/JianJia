extends Button

func _ready():
	
	self.pressed.connect(self._button_pressed)

func _process(delta):
	pass

func _button_pressed():
	get_tree().quit()
