extends Area2D

export (int) var  TURN_SPEED = 180
export (int) var  MOVE_SPEED = 200
const ACC = 0.05
const DEC = 0.03

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

	if Input.is_action_pressed("thrust") and velocity.length() < 0.05:
		velocity += moveDir * ACC * delta

	# scrub some speed (friction)
	velocity *= 0.985
	#velocity -= moveDir * DEC * delta

	if (velocity.length() > 0.001):
		position += velocity * MOVE_SPEED

	position.x = wrapf(position.x, -screen_buffer, screen_size.x + screen_buffer)
	position.y = wrapf(position.y, -screen_buffer, screen_size.y + screen_buffer)