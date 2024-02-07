extends Node2D

var personanje_01 = preload("res://players/player_01/player_01.tscn")
var personanje_02 = preload("res://players/player_02/Player_02.tscn")
var personanje_03 = preload("res://players/player_03/Player_03.tscn")


var p1
var p2

func _ready():
	
	if Global.player_seleccionado_01 == "player_01":
		p1 = personanje_01.instance()
		p1.global_position = $Position2D_01.global_position
		p1.player = "joypad_01"
		add_child(p1)
	elif Global.player_seleccionado_01 == "player_02":
		p1 = personanje_02.instance()
		p1.global_position = $Position2D_01.global_position
		p1.player = "joypad_01"
		add_child(p1)
	elif Global.player_seleccionado_01 == "player_03":
		p1 = personanje_03.instance()
		p1.global_position = $Position2D_01.global_position
		p1.player = "joypad_01"
		add_child(p1)
		
		
	if Global.player_seleccionado_02 == "player_01":
		p2 = personanje_01.instance()
		p2.global_position = $Position2D_02.global_position
		p2.player = "joypad_02"
		add_child(p2)
	elif Global.player_seleccionado_02 == "player_02":
		p2 = personanje_02.instance()
		p2.global_position = $Position2D_02.global_position
		p2.player = "joypad_02"
		add_child(p2)
	elif Global.player_seleccionado_02 == "player_03":
		p2 = personanje_03.instance()
		p2.global_position = $Position2D_02.global_position
		p2.player = "joypad_02"
		add_child(p2)
	pass
