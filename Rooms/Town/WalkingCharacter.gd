extends Path2D

class_name WalkingCharacter

var character
@onready var path_follow = $PathFollow2D

signal reached_door()

func set_character_and_stat(character, stat):
	self.character = character
	for child in path_follow.get_children():
		child.queue_free()
	path_follow.add_child(character)
	path_follow.add_child(stat)
	stat.position.y = -16
	stat.centered = true
	character.centered = true
	

var time := 0.0
var speed := 50
var amplitude := 0.1
	
func _process(delta):
	time += delta
	var wave = sin(time * speed / 3)
	character.scale.y = 1 + wave * amplitude
	character.scale.x = 1 - wave * amplitude

	path_follow.progress += delta * speed
	if path_follow.progress_ratio >= 1:
		queue_free()
		reached_door.emit()
