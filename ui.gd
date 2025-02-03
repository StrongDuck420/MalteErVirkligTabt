extends Control

@export var Main_scene: String = "res://Main.tscn"




func _on_play_pressed() -> void:
	get_tree().change_scene_to_file(Main_scene)
	
	
	


func _on_tips_pressed() -> void:
	get_tree().change_scene_to_file("res://Tips UI.tscn")
	
	
	



func _on_quit_pressed() -> void:
	get_tree().quit()
