extends Node2D

func done_travelling():
	get_tree().change_scene_to_packed(Scenes.GARDEN)

func spawn_characters():
	var count = (randi() % 3) + 1
	var original_count = get_child_count()
	var remove_character = func ():
		await get_tree().process_frame
		var new_count = get_child_count()
		if original_count == new_count:
			done_travelling()
	
	for i in range(count):
		var index = randi() % len(Constants.SHOPPERS)
		var shopper = Constants.SHOPPERS[index].instantiate()
		var stat = Constants.STATS[index].instantiate()
		var walking_character = Scenes.GARDEN_WALKING_CHARACTER.instantiate()
		add_child(walking_character)
		walking_character.set_character_and_stat(shopper, stat)
		walking_character.reached_door.connect(remove_character)
		await get_tree().create_timer(1.0).timeout
	
func _ready() -> void:
	spawn_characters()
	
