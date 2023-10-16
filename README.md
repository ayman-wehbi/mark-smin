# Mark Smin

Mark Smin is a 3D arcade shooter that features the fictional character, Mark, shooting down enemies who are trying to push him off of a cliff into an endless fall or simply knock him out. The game would start on a spacious platform where enemies would spawn to achieve their goal, and Mark would have to defend himself from them by shooting them. The platform would gradually decrease in size, making less room for Mark to maneuver. The more enemies Mark eliminates, the higher the score goes. 

Download playable file [HERE](https://mega.nz/folder/ijwjXBxR#gO8yTEEnA6ea1l8FXnaEiw)

### Gameplay
Very simple and straight to the point. After hitting play, the player is greeted with a bunch of enemies to shoot at. WASD for directions, mouse to look around,m and left mouse click to shoot. One point to the score for every enemy the player kills is added. The enemies will chase the player, and every single time the enemy collides with the player, the player loses a health point and the enemy is killed, but without adding a point to the score. The goal is to kill as many enemies as possible.

### Modes
There exist two modes. One easy and the latter harder. The easy has fewer enemy spawn points with larger time intervals between the enemy spawns. The harder mode has 2 more spawn points with less time for the enemies to appear.

My initial plan to balance the modes out was to place timed platforms for the player to jump over to cool off and shoot enemies without threat for a few seconds before the platform disappears with the player having to jump back to the initial platform. I could not make this in time, so I resorted to adding a bonus health point every 20 seconds when the hard mode is chosen.

### Development
Not as frustrating as the first game, however, I wish I had more time to work on this. I mainly learned about signals while developing this project, which went smoothly and was very interesting. I had a lot of trouble writing this from scratch at first, though. So I decided to use the foundation of Nico Strife, my first project, to build this. I decided to keep the same sky colors since I liked them so much. 

### Music
I produced a quick instrumental for this. I sampled Sweet Dreams by Marilyn Manson, and since I am not a fan of his and only like the guitar on this song, I put my own drums on top of the sample loop for the gameplay. It was fun to make.

### Models
All of my models are from Maximo. Then I imported them to Blender to add root motion and export them using a Godot plugin for Blender to get the smoothest results. 

### Known bugs
- In hard mode, performance may drop below 10FPS when there are too many enemies on the screen.
- In the case of two timers colliding and attempting to spawn two enemies from the same spawn point simultaneously, the two enemies will glitch into each other in a weird way and become more difficult to shoot at.








