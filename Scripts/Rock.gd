extends Area2D

var screen_size = Vector2()
var _radius
var _velocity

var rocksLarge = ["rock_large_1.png", "rock_large_2.png", "rock_large_3.png"]
var rocksMedium =  ["rock_medium_1.png", "rock_medium_2.png", "rock_medium_3.png"]
var rocksSmall =  ["rock_small_1.png", "rock_small_2.png", "rock_small_3.png"]

func start(pos, vel, sizeAsString):
	var rockArray
	if sizeAsString == "Large":
		rockArray = rocksLarge
		_radius = 53
	elif sizeAsString == "Medium":
		rockArray = rocksMedium
		_radius = 23
	else:
		rockArray = rocksSmall
		_radius = 10
	
	position = pos
	$Sprite.texture = load("res://Sprites/" + rockArray[randi() % 3])
	var shape = CircleShape2D.new()
	_velocity = vel
	shape.radius = _radius
	$CollisionShape2D.shape = shape

func explode():
	#layers = 0
	$Sprite.hide()
	
	
func _process(delta):
	position += _velocity * delta
	if position.x > screen_size.x + _radius:
		position.x = -_radius
	if position.x < 0 - _radius:
		position.x = screen_size.x + _radius
	if position.y > screen_size.y + _radius:
		position.y = -_radius
	if position.y < 0 - _radius:
		position.y = screen_size.y + _radius