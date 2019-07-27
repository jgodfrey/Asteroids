extends Node

export (PackedScene) var Rock

var screen_size = Vector2()
var heart_beat_timer = false

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	randomize()
	screen_size = get_viewport().get_visible_rect().size
	$Ship.screen_size = screen_size
	for i in range(4):
		spawn_rock(3)
	
func _on_Ship_shoot(bullet, pos, dir):
	var b = bullet.instance()
	b.start(pos, dir)
	add_child(b)
	
func spawn_rock(size, pos=null, vel=null):
	if !pos:
		$RockPath/RockSpawn.set_unit_offset(randf())
		pos =$RockPath/RockSpawn.position 
		
	if !vel:
		vel = Vector2(1, 0).rotated(rand_range(0, 2*PI)) * rand_range(100, 150)
	
	var r = Rock.instance()
	r.screen_size = screen_size
	r.start(pos, vel, size)
	#$Rocks.add_child(r)
	$Rocks.call_deferred("add_child", r) # add as soon as it's safe
	r.connect('explode', self, '_on_Rock_explode')

func _on_Rock_explode(size, radius, pos, vel):
	#score += size * 10
	#$HUD.update_score(score)
	if size > 1:
		for offset in [-1, 1]:
			var dir = (pos - $Ship.position).normalized().tangent() * offset
			var newpos = pos + dir * radius * 0.5
			var newvel = dir * vel.length() * 1.1
			spawn_rock(size - 1, newpos, newvel)

func _on_HeartbeatTimer_timeout():
	if (heart_beat_timer):
		$HeartBeat1.play()
	else:
		$HeartBeat2.play()
	heart_beat_timer = not heart_beat_timer
