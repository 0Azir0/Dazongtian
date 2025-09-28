extends Node
class_name HoverScale

@export var hover_scale: Vector2 = Vector2(1.2, 1.2)
@export var time: float = 0.075
@export var transition_type: Tween.TransitionType = Tween.TRANS_SINE

var target: Control
var default_scale: Vector2 = Vector2.ONE
var tween: Tween

func _ready() -> void:
	target = get_parent() as Control
	if not target:
		push_error("HoverScale 必須掛在 Button 的子節點")
		return

	# 放大中心設在正中央
	target.pivot_offset = target.size / 2
	default_scale = target.scale

	if target.has_signal("mouse_entered"):
		target.mouse_entered.connect(on_hover)
	if target.has_signal("mouse_exited"):
		target.mouse_exited.connect(off_hover)

func on_hover() -> void:
	add_tween("scale", hover_scale, time)

func off_hover() -> void:
	add_tween("scale", default_scale, time)

func add_tween(property: String, value, seconds: float) -> void:
	if tween and tween.is_valid():
		tween.kill()
	tween = target.create_tween()
	tween.tween_property(target, property, value, seconds).set_trans(transition_type)
