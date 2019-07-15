extends Node

export (PackedScene) var Rock

var screen_size = Vector2()

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	randomize()
	screen_size = get_viewport().get_visible_rect().size
	$Ship.screen_size = screen_size
	for i in range(4):
		spawn_rock("Large")
	
func _on_Ship_shoot(bullet, pos, dir):
	var b = bullet.instance()
	b.start(pos, dir)
	add_child(b)
	
func spawn_rock(size, pos=null, vel=null):
	if !pos:
		$RockPath/RockSpawn.set_offset(randi())
		pos =$RockPath/RockSpawn.position 
		
	if !vel:
		vel = Vector2(1, 0).rotated(rand_range(0, 2*PI)) * rand_range(100, 150)
	
	var r = Rock.instance()
	r.screen_size = screen_size
	r.start(pos, vel, size)
	$Rocks.add_child(r)
