extends Control


func _on_button_pressed() -> void:
	if AutoScroller.get_node("AudioStreamPlayer").playing:
		AutoScroller.get_node("AudioStreamPlayer").stop()
	get_tree().change_scene_to_file("res://scene/control.tscn")
	AutoScroller.visible = false
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	$PanelContainer/VBoxContainer/Button2.text = str("why quit :(")
	pass # Replace with function body.
	
