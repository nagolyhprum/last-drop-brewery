extends Node

const INGREDIENT_EGG = preload("res://Ingredients/Egg.tscn")

const REACTION_ONE_OF_FOUR = preload("res://Reactions/OneOfFour.tscn")

const SOURCE_APPLE_TREE = preload("res://Sources/AppleTree.tscn")

const STAT_STRENGTH = preload("res://Stats/Strength.tscn")
const STAT_DEFENSE = preload("res://Stats/Defense.tscn")
const STATS = [STAT_DEFENSE, STAT_STRENGTH]

const CHARACTER_PLAYER = preload("res://Characters/Player.tscn")
const CHARACTER_SOLDIER = preload("res://Characters/Soldier.tscn")
const CHARACTER_WARRIOR = preload("res://Characters/Warrior.tscn")
const SHOPPERS = [CHARACTER_SOLDIER, CHARACTER_WARRIOR]
