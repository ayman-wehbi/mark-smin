#This sets the score and health and updates them via signals 
#basically makes score and health usable in any script when playerdata.[either] is used
extends Node

signal score_updated


var score: = 0 setget set_score
var health: = 3 setget set_health

func set_score(value: int) -> void:
	score = value
	emit_signal("score_updated")

func set_health (value: int) -> void:
	health = value
	emit_signal("health_updated")

func reset() -> void:
	score = 0 
	health = 3


