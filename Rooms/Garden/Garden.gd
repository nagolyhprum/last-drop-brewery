extends Node2D

const ROWS = 7
const COLUMNS = 14
const SCALE = 4
const OFFSET = 2
const SIZE = 16

func _ready():
	State.garden_sources_and_ingredients = []
	State.garden_sources_and_ingredients.resize(ROWS * COLUMNS)
	for column in range(COLUMNS):
		for row in range(ROWS):
			if randf() > .95:
				var index = randi() % len(Scenes.SOURCES)			
				var source = Scenes.SOURCES[index].instantiate()
				source.position.x = (column + OFFSET) * SIZE
				source.position.y = (row + OFFSET) * SIZE
				add_child(source)
				var ingredient = Scenes.INGREDIENTS[index]
				State.garden_sources_and_ingredients[row * COLUMNS + column] = {
					"source": source,
					"ingredient": ingredient
				}

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		var column = floor((event.position.x - SCALE * OFFSET * SIZE) / (SIZE * SCALE))
		var row = floor((event.position.y - SCALE * OFFSET * SIZE) / (SIZE * SCALE))
		var index = row * COLUMNS + column
		var source_and_ingredient = State.garden_sources_and_ingredients[index]
		if source_and_ingredient:
			State.garden_sources_and_ingredients[index] = null
			source_and_ingredient["source"].queue_free()
			print(row, ", ", column)
		
