@tool
class_name Chip extends TextureRect

@export var player1_color : Color
@export var player2_color : Color

enum Players {PLAYER_1, PLAYER_2}

@export var player : Players :
	set(value):
		player = value
		self_modulate = player1_color if player == Players.PLAYER_1 else player2_color

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
