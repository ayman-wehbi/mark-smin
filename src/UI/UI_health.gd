extends Control

onready var health : Label = get_node("Label")
onready var score : Label = get_node("Label2")

# script to update the UI when needed
func _ready():
	PlayerData.connect("health_updated", self, "update_ui")
	PlayerData.connect("score_updated", self, "update_ui")
	
	update_ui()
	
func update_ui():
	health.text = "Health: %s" % PlayerData.health
	score.text = "Score: %s" % PlayerData.score
