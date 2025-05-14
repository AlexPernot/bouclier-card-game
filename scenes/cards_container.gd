extends Node2D

func free_children():
	for child in get_children():
		child.queue_free()
