extends Control

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://scene/world_1.tscn")

func _on_video_stream_player_finished() -> void:
	get_tree().change_scene_to_file("res://scene/world_1.tscn")
	pass # Replace with function body.
