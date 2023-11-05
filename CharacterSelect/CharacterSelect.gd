extends Node2D


func _process(delta):
	match EcGame.PlayerSelect:
		0:
			get_node("PlayerSelect").play("Player0")
			get_node("PlayerSelect/Descrpt").text = "Name : Fire Knight \nAbilities : "
		1:
			get_node("PlayerSelect").play("Player1")
			get_node("PlayerSelect/Descrpt").text = "Name : Leaf Ranger \nAbilities : "
		2:
			get_node("PlayerSelect").play("Player2")
			get_node("PlayerSelect/Descrpt").text = "Name : Metal Bladeskeeper \nAbilities : "
		3:
			get_node("PlayerSelect").play("Player3")
			get_node("PlayerSelect/Descrpt").text = "Name : Air Monk \nAbilities : "
		4:
			get_node("PlayerSelect").play("Player4")
			get_node("PlayerSelect/Descrpt").text = "Name : Water Priestess \nAbilities : "
		5:
			get_node("PlayerSelect").play("Player5")
			get_node("PlayerSelect/Descrpt").text = "Name : Wind Hashimara \nAbilities : "
		
func _on_left_pressed():
	if EcGame.PlayerSelect >= 1:
		EcGame.PlayerSelect -= 1
	elif EcGame.PlayerSelect == 0:
		EcGame.PlayerSelect = 6

func _on_right_pressed():
	if EcGame.PlayerSelect < 5:
		EcGame.PlayerSelect += 1
	elif EcGame.PlayerSelect == 5:
		EcGame.PlayerSelect = 0


func _on_ready_pressed():
	get_tree().change_scene_to_file("res://MapSelection/MapSelection.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://MainMenu/MainMenu.tscn")
