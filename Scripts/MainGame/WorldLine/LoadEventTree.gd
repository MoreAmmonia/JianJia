extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug(get_meta("WorldName"))
	var WorldEventStr=FileAccess.open("res://Configs/WorldTree/%s.json"%get_meta("WorldName"),FileAccess.READ).get_as_text()
	print_debug(WorldEventStr)
	var EventButtonPrefab = load("res://Prefabs/EventButton.tscn")
	var WorldEventJson=JSON.parse_string(WorldEventStr)
	for InstancedEvent in get_children():
		InstancedEvent.queue_free()
	self.custom_minimum_size=Vector2(WorldEventJson.WorldInfo.length,2160)
	for EventName in WorldEventJson:
		if EventName=="WorldInfo":continue
		print_debug(EventName)
		var Event=WorldEventJson[EventName]
		var EventButtonInstance= EventButtonPrefab.instantiate()
		EventButtonInstance.set_name(EventName)
		EventButtonInstance.position=Vector2(Event.position[0],Event.position[1])
		EventButtonInstance.get_node("MainBar").get_node("Title").set_text(Event.name)
		EventButtonInstance.get_node("FootBar").get_node("EventID").set_text(Event.id)
		add_child(EventButtonInstance)
