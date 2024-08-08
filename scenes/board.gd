extends AspectRatioContainer
@onready var grid: GridContainer = %Grid
@onready var square_scene: PackedScene = preload("res://scenes/square.tscn")

var squares : Array[Square] = []

const BOARD_SIZE = 8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(BOARD_SIZE):
		for j in range(BOARD_SIZE):
			var square : Square = square_scene.instantiate()

			square.square_id = i * BOARD_SIZE + j
			# square.square_name = TODO
			square.dark = (i+j) % 2 == 0

			squares.push_front(square)
			grid.add_child(square)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
