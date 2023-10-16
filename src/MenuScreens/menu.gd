extends Control

func _start():
	get_tree().change_scene("res://src/Levels/Easy_Mode.tscn")

func _quit():
	get_tree().quit()

func _on_start2_pressed():
	get_tree().change_scene("res://src/Levels/Hard_Mode.tscn")
