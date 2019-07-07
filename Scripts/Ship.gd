extends RigidBody2D

signal shoot

export (int) var engine_power
export (int) var spin_power
export (PackedScene) var Bullet
export (float) var cool_down

var can_shoot = true
var thrust = Vector2()
var rotation_dir = 0

var screen_size = Vector2()

func _ready():
	screen_size = get_viewport().get_visible_rect().size
	position.x = screen_size.x / 2
	position.y = screen_size.y / 2
	$GunTimer.wait_time = cool_down

func _process(delta):
	get_input()

func get_input():
	# move
	thrust = Vector2()
	if Input.is_action_pressed("up"):
		thrust = Vector2(engine_power, 0)

	# rotate
	rotation_dir = 0
	if Input.is_action_pressed("right"):
		rotation_dir += 1
	if Input.is_action_pressed("left"):
		rotation_dir -= 1

	# fire
	if Input.is_action_pressed("shoot") and can_shoot:
		shoot()

func _integrate_forces(physics_state):
	set_applied_force(thrust.rotated(rotation))
	set_applied_torque(spin_power * rotation_dir)
	screen_wrap(physics_state)

func _on_GunTimer_timeout():
	can_shoot = true

func shoot():
	emit_signal("shoot", Bullet, $Muzzle.global_position, rotation)
	can_shoot = false
	$GunTimer.start()

func screen_wrap(physics_state):
	var xform = physics_state.get_transform()
	if xform.origin.x > screen_size.x:
		xform.origin.x = 0
	if xform.origin.x < 0:
		xform.origin.x = screen_size.x
	if xform.origin.y > screen_size.y:
		xform.origin.y = 0
	if xform.origin.y < 0:
		xform.origin.y = screen_size.y	
	physics_state.set_transform(xform)