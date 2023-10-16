extends KinematicBody

var target
export var speed = 100
var direction
onready var enemyBody = $MeshInstance
export var score: = 0

# signal to scan if anyone from group player entered the scan area of the AI 
func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		target = body

# chase the player and keep looking at the player as well
func _physics_process(delta):
	if target:
		look_at(target.global_transform.origin, Vector3.UP)
		chase(delta)


func chase(delta):
		var direction = (target.transform.origin - transform.origin).normalized()
		move_and_slide(direction * speed * delta, Vector3.UP)
		
		for index in get_slide_count():
			var collision = get_slide_collision (index)
			if collision.collider.is_in_group("Player"):
				PlayerData.health = PlayerData.health - 1
				PlayerData.score -= 1
				print("collided with", collision.collider.name)
				takeDamage();
			pass
			#deaths screen
			if PlayerData.health < 1:
				get_tree().change_scene("res://src/DeathScreen/DeathScreen.tscn")
				
			
#enemy takes damage and adds to the score
func takeDamage():
	queue_free()
	PlayerData.score += 1
	
