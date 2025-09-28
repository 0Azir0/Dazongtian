extends Node2D

func _ready() -> void:
	AutoScroller.visible = false
	AutoScroller.get_node("AudioStreamPlayer").stop()
