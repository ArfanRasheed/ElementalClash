extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu/MainMenu.tscn")


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://CharacterSelect/CharacterSelect.tscn")
