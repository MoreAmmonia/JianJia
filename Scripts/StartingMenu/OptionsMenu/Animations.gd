extends AnimationPlayer

var TimeToExit=false

func _on_animation_finished(anim_name):
	if anim_name=="LoadedOptions" and TimeToExit:
		#get_tree().change_scene_to_file("res://mainmenu.tscn")
		pass
