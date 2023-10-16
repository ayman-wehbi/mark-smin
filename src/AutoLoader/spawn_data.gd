#this connnects the spawns with the timers to spawn an enemy on every timer countdown
extends Node
var Enemy = preload("res://src/EnemyAI/Enemy.tscn")

func _ready():
	pass

func _on_SpawnTimer_timeout():
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.transform = $Spawn.transform

func _on_Timer_timeout():
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.transform = $Spawn2.transform

func _on_Timer2_timeout():
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.transform = $Spawn3.transform
	

func _on_Timer3_timeout():
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.transform = $Spawn4.transform


func _on_Timer4_timeout():
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.transform = $Spawn5.transform


func _on_Timer5_timeout():
	PlayerData.health += 1
