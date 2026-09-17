extends Label

const FONT_SIZE = 40

func _ready():
	# label settings
	autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	uppercase = true

	# label fills the parent
	set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)

	# font size
	add_theme_font_size_override("font_size", FONT_SIZE)
