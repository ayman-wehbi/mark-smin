extends Control

onready var score : Label = get_node("Label")

func _ready():
	set_process_input(true)
	PlayerData.connect("score_updated", self, "show_score")
	show_score()
	
func show_score():
	score.text = "SCORE: %s" % PlayerData.score

func _input(event):
	if event.is_action_pressed("menu"):
		PlayerData.reset()
		get_tree().change_scene("res://src/Levels/Hard_Mode.tscn")
	
	if event.is_action_pressed("respawn"):
		PlayerData.reset()
		get_tree().change_scene("res://src/Levels/Easy_Mode.tscn")
	
	if event.is_action_pressed("exit"):
		get_tree().quit()
