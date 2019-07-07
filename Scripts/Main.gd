extends Node

func _on_Ship_shoot(bullet, pos, dir):
	var b = bullet.instance()
	b.start(pos, dir)
	add_child(b)
