extends Node2D

@onready var root = $"."

func _ready() -> void:
	var index = randi() % len(Scenes.SHOPPERS)
	var shopper = Scenes.SHOPPERS[index].instantiate()
	var stat = Scenes.STATS[index].instantiate()
	stat.position.y = -16
	shopper.add_child(stat)
	shopper.position.x = 32
	shopper.position.y = 32		
	root.add_child(shopper)
