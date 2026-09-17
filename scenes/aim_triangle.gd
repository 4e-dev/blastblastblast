extends Polygon2D

@export var size := 50.0

# Generates a triangle polygon.
func _ready():
	var half = size/2
	polygon = PackedVector2Array([
		Vector2(size, 0),
		Vector2(-half, -half),
		Vector2(-half, half)
	])
