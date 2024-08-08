@tool
class_name Square extends ColorRect

var square_id = -1
var square_name = "N/A"

@export var dark_color : Color
@export var light_color : Color
@export var dark : bool = false :
	set(value):
		dark = value
		color = dark_color if value else light_color

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	size_flags_horizontal = Control.SIZE_EXPAND_FILL
	size_flags_vertical = Control.SIZE_EXPAND_FILL


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
