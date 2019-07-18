extends RigidBody2D

signal shoot
enum {INIT, ALIVE, INVULNERABLE, DEAD}
var state = null

export (int) var engine_power
export (int) var spin_power
export (PackedScene) var Bullet
export (float) var cool_down

var can_shoot = true
var thrust = Vector2()
var rotation_dir = 0

var screen_size = Vector2()

func _ready():
	change_state(ALIVE)
	screen_size = get_viewport().get_visible_rect().size
	position.x = screen_size.x / 2
	position.y = screen_size.y / 2
	$GunTimer.wait_time = cool_down

func _process(delta):
	get_input()
	
func get_input():
	# move
	thrust = Vector2()
	if Input.is_action_pressed("thrust"):
		thrust = Vector2(engine_power, 0)
		$FlameSprite.show()
		if not $EngineSound.playing:
			$EngineSound.play()
	else:
		$FlameSprite.hide()
		$EngineSound.stop()

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
	var transform = screen_wrap(physics_state.get_transform())
	physics_state.set_transform(transform)

func _on_GunTimer_timeout():
	can_shoot = true

func shoot():
	emit_signal("shoot", Bullet, $Muzzle.global_position, rotation)
	can_shoot = false
	$GunTimer.start()
	$LaserSound.play()
	
func screen_wrap(transform):
	if transform.origin.x > screen_size.x:
		transform.origin.x = 0
	if transform.origin.x < 0:
		transform.origin.x = screen_size.x
	if transform.origin.y > screen_size.y:
		transform.origin.y = 0
	if transform.origin.y < 0:
		transform.origin.y = screen_size.y	
	return transform

func change_state(new_state):
	var shape = $CollisionShape2D
	match new_state:
		INIT:
			shape.disabled = true
		ALIVE:
			shape.disabled = false
		INVULNERABLE:
			shape.disabled = true
		DEAD:
			shape.disabled = true
	
	state = new_state