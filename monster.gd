extends Area3D

var counter
var player
var sight
var chase_it
var SPEED = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	counter = 0 # Replace with function body.
	connect("body_entered",_on_body_entered,CONNECT_PERSIST)
	player = get_node("../Player")
	sight = get_node("./sight")
	sight.connect("body_entered",_on_player_nearby, CONNECT_PERSIST)
	chase_it = false

func _on_player_nearby (body) : 
	chase_it = true
	print ( str(counter) + " Monster has seen the player:" + str(overlaps_body(player)) )
	counter += 1
		
func _on_body_entered (body) : 
	if has_overlapping_bodies() :
			print ( str(counter) + " Monster is player:" + str(overlaps_body(player)) )
			counter += 1
	else :
		print ("beem!!! ")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (chase_it)  :
		print (position)
		var direction = (player.position -  self.position).normalized()
		self.position.x += direction.x * 0.001 * counter
		self.position.z += direction.z * 0.001 * counter
		print (position)
		if counter < 50 :
			counter += 1
	#print (str(player.position) + str(position))
	#print ()
