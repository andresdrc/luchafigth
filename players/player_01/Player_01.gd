extends KinematicBody2D

var vel_mov = 100
var gravedad = 200
var player

func _process(delta):
	$AnimationPlayer.play("reposo")

func _physics_process(delta):
	
	if !self.is_on_floor():
		move_and_slide(Vector2(0, gravedad))
	
	if self.player == "player1":
		if Input.is_action_pressed("p1_der"):
			print("P1 DER")
			move_and_slide(Vector2(vel_mov,0))
		if Input.is_action_pressed("p1_iz"):
			move_and_slide(Vector2(-vel_mov,0))
		if Input.is_action_just_pressed("p1_salto"):
			move_and_slide(Vector2(0,-400))
		if Input.is_action_pressed("p1_poder"):
			pass
		if Input.is_action_just_released("p1_der") and Input.is_action_just_released("p1_iz"):
			move_and_slide(Vector2(0,0))
			
	if self.player == "player2":
		if Input.is_action_pressed("p2_der"):
			print("P2 DER")
			move_and_slide(Vector2(vel_mov,0))
		if Input.is_action_pressed("p2_iz"):
			move_and_slide(Vector2(-vel_mov,0))
		if Input.is_action_pressed("p2_salto"):
			move_and_slide(Vector2(0,-200))
		if Input.is_action_pressed("p2_poder"):
			pass
		if Input.is_action_just_released("p2_der") and Input.is_action_just_released("p2_iz"):
			move_and_slide(Vector2(0,0))
