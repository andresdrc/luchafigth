extends Control


func _on_Btn_p1_pressed():
	if Global.player_01 == null:
		Global.player_01 = "player_01"
		$Label.text = "Ahora Seleccionar player 2"
	else:
		Global.player_02 = "player_01"
		get_tree().change_scene("res://mapas/mundo_01/mundo_01.tscn")

func _on_Btn_p3_pressed():
	if Global.player_01 == null:
		Global.player_01 = "player_03"
		$Label.text = "Ahora Seleccionar player 2"
	else:
		Global.player_02 = "player_03"
		get_tree().change_scene("res://mapas/mundo_01/mundo_01.tscn")

func _on_Btn_p2_pressed():
	if Global.player_01 == null:
		Global.player_01 = "player_02"
		$Label.text = "Ahora Seleccionar player 2"
	else:
		Global.player_02 = "player_02"
		get_tree().change_scene("res://mapas/mundo_01/mundo_01.tscn")
