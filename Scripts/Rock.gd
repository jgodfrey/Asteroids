extends Area2D

signal ship_dead

var screen_size = Vector2()
var _radius
var _velocity
var _size

signal explode

var rocksLarge = ["rock_large_1.png", "rock_large_2.png", "rock_large_3.png"]
var rocksMedium =  ["rock_medium_1.png", "rock_medium_2.png", "rock_medium_3.png"]
var rocksSmall =  ["rock_small_1.png", "rock_small_2.png", "rock_small_3.png"]

func start(pos, vel, size):
	_size = size
	var rockArray
	if size == 3:
		rockArray = rocksLarge
		_radius = 60
	elif size == 2:
		rockArray = rocksMedium
		_radius = 30
	else:
		rockArray = rocksSmall
		_radius = 13
	
	position = pos
	$Sprite.texture = load("res://Sprites/" + rockArray[randi() % 3])
	var shape = CircleShape2D.new()
	_velocity = vel
	shape.radius = _radius
	$CollisionShape2D.shape = shape

func explode():
	$Sprite.hide()
	$CollisionShape2D.set_deferred("disabled", true) # disable as soon as it's safe
	emit_signal('explode', _size, _radius, position, _velocity)
	$ExplodeSound.play()
	#$Sprite.hide()
	
func _process(delta):
	position += _velocity * delta
	position.x = wrapf(position.x, -_radius, screen_size.x + _radius)
	position.y = wrapf(position.y, -_radius, screen_size.y + _radius); 

func _on_ExplodeSound_finished():
	queue_free()

func _on_Rock_body_entered(body):
	# If we collided with the ship, emit the ship_dead signal
	# The signal is connected between each rock and the ship
	# in the Main scene as each rock is constructed.
	if (body.name == "Ship"):
		emit_signal("ship_dead")
