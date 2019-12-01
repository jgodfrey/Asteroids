extends Area2D

export (int) var TURN_SPEED = 180 # deg/sec
export (int) var MAX_SPEED = 500  # pix/sec

export (float) var ACC = 10 # pix/sec
export (float) var DEC = 3  # pix/sec

var velocity = Vector2.ZERO

var screen_size
var screen_buffer = 12

func _ready():
	screen_size = get_viewport_rect().size
	position.x = screen_size.x / 2
	position.y = screen_size.y / 2

func _process(delta):
	if Input.is_action_pressed("left"):
		rotation_degrees -= TURN_SPEED * delta
	if Input.is_action_pressed("right"):
		rotation_degrees += TURN_SPEED * delta

	var moveDir = Vector2(1,0).rotated(rotation)

	if Input.is_action_pressed("thrust"):
		velocity += moveDir * ACC
		velocity = velocity.clamped(MAX_SPEED)

	# Create a drag vector opposite the current velocity
	var drag = velocity.normalized() * DEC
	
	# If the drag is greater than the velocity, stop the ship's motion
	# Else, apply the drag
	if (drag.length() >= velocity.length()):
		velocity = Vector2.ZERO
	else:
		velocity -= drag;

	# Finally, apply the calculated velocity * delta (so, for 1 frame)
	position += velocity * delta

	# Wrap the ship around the screen edges
	position.x = wrapf(position.x, -screen_buffer, screen_size.x + screen_buffer)
	position.y = wrapf(position.y, -screen_buffer, screen_size.y + screen_buffer)