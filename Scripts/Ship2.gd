extends Area2D

export var rot_speed = PI # 180 deg/sec
export var thrust = 500
export var max_vel = 700
export var friction = 0.65

var screen_size = Vector2()
var screen_buffer = 12
var rot = 0
var pos = Vector2()
var vel = Vector2()
var acc = Vector2()

func _ready():
	screen_size = get_viewport_rect().size
	pos = screen_size / 2
	set_position(pos)
	
func _process(delta):
	if Input.is_action_pressed("left"):
		rot -= rot_speed * delta	
		
	if Input.is_action_pressed("right"):
		rot += rot_speed * delta
		
	if Input.is_action_pressed("thrust"):
		acc = Vector2(thrust, 0).rotated(rot)
	else:
		acc = Vector2.ZERO
	
	acc += vel * -friction
	vel += acc * delta
	
	# Clamp the maximum velocity
	vel = vel.clamped(max_vel)

	pos += vel * delta
	
	# Screen-wrap if necessary
	pos.x = wrapf(pos.x, -screen_buffer, screen_size.x + screen_buffer)
	pos.y = wrapf(pos.y, -screen_buffer, screen_size.y + screen_buffer)
	
	# Finally, set the ship's position and rotation
	position = pos
	rotation = rot
	#set_position(pos)
	#set_rotation(rot)