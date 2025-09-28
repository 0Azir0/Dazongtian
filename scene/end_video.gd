extends Control

func _ready() -> void:
	AutoScroller.visible = false
	if AutoScroller.get_node("AudioStreamPlayer").playing:
		AutoScroller.get_node("AudioStreamPlayer").stop()

func _on_video_stream_player_finished() -> void:
	AutoScroller.visible = true
	AutoScroller.get_node("AudioStreamPlayer").play()
	get_tree().change_scene_to_file("res://scene/new_world.tscn")
	
	pass # Replace with function body.
