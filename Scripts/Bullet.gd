extends Area2D

export (int) var speed
#export (float) var life_in_seconds

var velocity = Vector2()
var screen_size = Vector2()

func start(pos, dir):
	position = pos
	rotation = dir
	velocity = Vector2(speed, 0).rotated(dir)

func _ready():
	screen_size = get_viewport().get_visible_rect().size
	# calculate a wait time that allows the shot to live for "1 screen width"
	$BulletTimer.wait_time = screen_size.x / speed
	$BulletTimer.start()

func _process(delta):
	position += velocity * delta
	if position.x > screen_size.x:
		position.x = 0
	if position.x < 0:
		position.x = screen_size.x
	if position.y > screen_size.y:
		position.y = 0
	if position.y < 0:
		position.y = screen_size.y		

func _on_Bullet_body_entered(body):
	if body.is_in_group('rocks'):
		body.explode()
		clean_up()

# --- When the timer runs out, kill the bullet
func _on_BulletTimer_timeout():
	clean_up()

# --- remove the bullet from the scene
func clean_up():
	queue_free()
