extends Node2D

func _ready() -> void:
	AutoScroller.visible = false
	if AutoScroller.get_node("AudioStreamPlayer").playing:
		AutoScroller.get_node("AudioStreamPlayer").stop()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		get_tree().change_scene_to_file("res://scene/end_video.tscn")
	pass # Replace with function body.
