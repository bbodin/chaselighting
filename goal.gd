extends Area3D

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered",_on_body_entered,CONNECT_PERSIST)
	

		
func _on_body_entered (body) : 
	print ("You win!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
