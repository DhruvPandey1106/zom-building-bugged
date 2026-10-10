extends Label

@onready var level: Node2D = $"../.."
@onready var label_3: Label = %Label3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.challenge_complete.connect(_on_challenge_complete)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_challenge_complete() -> void:
	level.level_number += 1
	text = "Floor: " + str(level.level_number)
