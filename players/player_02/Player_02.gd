extends KinematicBody2D

var direccion : Vector2 = Vector2.ZERO
var vel_mov = 300
var gravedad = 200
var fuerza_salto = 1000
var player

func _process(delta):
	$AnimationPlayer.play("reposo")

func _physics_process(delta):
	
	if !self.is_on_floor():
		direccion.y += gravedad
	
	if self.player == "joypad_01" :
		direccion = PlayerGenerico.mov_basicos_joy1(direccion, self, PackedScene.new())
	if self.player == "joypad_02":
		direccion = PlayerGenerico.mov_basicos_joy2(direccion, self )
			
	direccion = move_and_slide(direccion, Vector2.UP)
