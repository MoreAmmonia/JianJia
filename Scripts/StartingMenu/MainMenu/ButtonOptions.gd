extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	self.pressed.connect(self._button_pressed)

func _process(delta):
	pass

func _button_pressed():
	var animator=%Animations
	animator.play("LoadingOptions")
