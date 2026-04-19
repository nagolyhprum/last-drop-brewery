extends Node2D

func _ready():
	for column in range(14):
		for row in range(7):
			if randf() > .95:
				var index = randi() % len(Scenes.SOURCES)			
				var source = Scenes.SOURCES[index].instantiate()
				source.position.x = (column + 2) * 16
				source.position.y = (row + 2) * 16
				add_child(source)
				
