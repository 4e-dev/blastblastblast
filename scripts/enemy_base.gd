class_name EnemyBase
extends CharacterBody2D

@onready var label = $Sprite/Label

func _ready():
	label.text = name
