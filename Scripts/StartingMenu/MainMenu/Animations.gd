extends AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_animation_finished(anim_name):
	print_debug(anim_name)
	match anim_name:
		"LoadingOptions":
			get_tree().change_scene_to_file("res://optionsmenu.tscn")
