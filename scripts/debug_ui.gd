extends CanvasLayer

@onready var box_container = $PanelContainer/MarginContainer/BoxContainer
@onready var player = $"../Player"
@onready var theme = load("res://assets/themes/ui.tres")
@onready var enemies = $"../Enemies"
var labels: Array[Label] = []

enum LabelType {
	FPS,
	PLAYER_STATE,
	POSITION,
	VELOCITY,
	ENEMIES_COUNT,
	LABEL_TYPE_COUNT
}

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_debug_ui"):
		visible = !visible

func _ready() -> void:
	visible = false
	labels.resize(LabelType.LABEL_TYPE_COUNT)
	for i in range(LabelType.LABEL_TYPE_COUNT):
		var label = create_label('test')
		labels[i] = label
		box_container.add_child(label)

func _process(delta: float) -> void:
	labels[LabelType.FPS].text = "FPS: %d" % Engine.get_frames_per_second()

	var moving = player.velocity != Vector2.ZERO
	labels[LabelType.PLAYER_STATE].text = "Movement: %s" % ("Moving" if moving else "Idle")

	labels[LabelType.POSITION].text = "Pos: %.1f, %.1f" % [player.position.x, player.position.y]
	labels[LabelType.VELOCITY].text = "Vel: %.1f, %.1f" % [player.velocity.x, player.velocity.y]
	labels[LabelType.ENEMIES_COUNT].text = "Enemies: %d" % enemies.get_child_count()

func create_label(text: String = "") -> Label:
	var label = Label.new()
	label.text = text
	label.theme = theme
	return label
