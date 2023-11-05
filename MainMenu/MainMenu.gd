extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://CharacterSelect/CharacterSelect.tscn")


func _on_exit_button_pressed():
	get_tree().quit()


func _on_link_button_pressed():
	OS.shell_open("https://forms.gle/3o5KY1WCarutDeRf6")


func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://Settings/Settings.tscn")


func _on_discord_pressed():
	OS.shell_open("https://discord.gg/DFmnsfPZCx")
