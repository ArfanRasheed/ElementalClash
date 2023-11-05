extends Node2D


func _process(delta):
	match EcGame.PlayerSelect:
		0:
			get_node("PlayerSelect").play("Player0")
		1:
			get_node("PlayerSelect").play("Player1")
		2:
			get_node("PlayerSelect").play("Player2")
		3:
			get_node("PlayerSelect").play("Player3")
		4:
			get_node("PlayerSelect").play("Player4")
		5:
			get_node("PlayerSelect").play("Player5")
		
func _on_left_pressed():
	if EcGame.PlayerSelect >= 0:
		EcGame.PlayerSelect -= 1


func _on_right_pressed():
	if EcGame.PlayerSelect < 6:
		EcGame.PlayerSelect += 1


func _on_ready_pressed():
	get_tree().change_scene_to_file("res://FightScene/Map1.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://MainMenu/MainMenu.tscn")
