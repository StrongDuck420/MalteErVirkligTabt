extends Node2D

# Node references
@onready var character_body = $RigidBody2D # Update this to the actual name if different
@onready var label = $CanvasLayer/MarginContainer/VBoxContainer/Label
@onready var label2 = $CanvasLayer/MarginContainer/VBoxContainer/Label2
@onready var label3 = $CanvasLayer/MarginContainer/VBoxContainer/Label3
@onready var Player = get_node("RigidBody2D")  # Adjust the path to your Player node

func _ready():
	# Initialize the label text
	label.text = "Fall Speed: 0 m/s"
	label2.text = "Altitude: 0"
	label3.text = "Fuel: 100%"

func _physics_process(_delta):
	# Get the CharacterBody2D's velocity along the y-axis
	var fall_speed = character_body.velocity.y

	var CharacterPlacement = character_body.position.y * -1
	
	# Only display speed if falling (positive y velocity)
	if fall_speed > 0:
		label.text = "Fall Speed: " + str(round(fall_speed) / 10) + " m/s"
	else:
		label.text = "Fall Speed: 0 px/s"
		
	if CharacterPlacement > 0:
		label2.text = "Altitude: " + str(round(CharacterPlacement) / 10) + " m"
	else:
		label2.text = "you hit the ground"
	
	if Player.Fuel > 0:
		label3.text = "Fuel: " + str(round(Player.Fuel)) + "%"
	else:
		label3.text = "Fuel: 0%"
		
		
		
		
		
		
		
		
		
