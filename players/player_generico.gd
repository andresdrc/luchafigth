extends KinematicBody2D

var direccion : Vector2 = Vector2.ZERO
var vel_mov = 300
var gravedad = 200
var fuerza_salto = 1000
var player


func mov_basicos_joy1(var dir : Vector2, var kinematic, var ataque : PackedScene):
		
	if Input.is_action_pressed("joy_der") or Input.is_action_pressed("p1_der"):
		dir.x = vel_mov
	if Input.is_action_pressed("joy_iz") or Input.is_action_pressed("p1_iz"):
		dir.x = -vel_mov
	if (Input.is_action_pressed("joy_A")  or Input.is_action_pressed("p1_A")) and kinematic.is_on_floor():
		dir.y = -fuerza_salto
	if (Input.is_action_pressed("joy_X")  or Input.is_action_pressed("p1_X")) and kinematic.is_on_floor():
		var instancia = ataque.instance()
		instancia.global_position = kinematic.global_position
		get_parent().add_child(instancia)
	if Input.is_action_just_released("joy_der") or Input.is_action_just_released("joy_iz")  or Input.is_action_just_released("p1_der") or Input.is_action_just_released("p1_iz"):
		dir.x = 0
		
	return dir

func mov_basicos_joy2(var dir : Vector2, var kinematic):
	if Input.is_action_pressed("joy2_der") or Input.is_action_pressed("p2_der"):
		dir.x = vel_mov
	if Input.is_action_pressed("joy2_iz") or Input.is_action_pressed("p2_iz"):
		dir.x = -vel_mov
	if (Input.is_action_pressed("joy2_A") or Input.is_action_pressed("p2_A")) and kinematic.is_on_floor():
		dir.y = -fuerza_salto
	if (Input.is_action_pressed("joy2_X") or Input.is_action_pressed("p2_X")) and kinematic.is_on_floor():
		dir.y = -fuerza_salto
	if Input.is_action_just_released("joy2_der") or Input.is_action_just_released("joy2_iz") or Input.is_action_just_released("p2_der") or Input.is_action_just_released("p2_iz"):
		dir.x = 0
	
	return dir
