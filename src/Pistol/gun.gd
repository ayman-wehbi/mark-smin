extends Spatial

onready var AnimPlayer = $AnimationPlayer
onready var Bullets = $Bullets
onready var ShootTimer = $ShootTimer 

#initially had bigger plans for the gun, but i will keep the extra variables to pick up on in the future
func Shoot():
	$sound.play()
	ShootTimer.start()
	

 

