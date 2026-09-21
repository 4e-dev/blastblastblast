using Godot;
using System;

public partial class Player : CharacterBody2D
{
	[Export] public float Speed = 600.0f;
	private Label _Label;

	public override void _Ready()
	{
		_Label = (Label)GetNode("Sprite/Label");
		_Label.Text = Name;
	}

	public override void _PhysicsProcess(double delta)
	{
		Vector2 Direction = Input.GetVector("move_left", "move_right", "move_up", "move_down");
		Velocity = Direction * Speed;
		MoveAndSlide();
	}
}
