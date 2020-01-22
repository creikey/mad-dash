extends KinematicBody2D

const movement_accel = 2000.0
const terminal_velocity = 900.0

var accel: Vector2 = Vector2()
var velocity: Vector2 = Vector2()

var cur_target_position: Vector2 = Vector2()
var starting_position: Vector2 = Vector2() setget _set_starting_position
var at_start: bool = true

func _physics_process(delta):
	if not at_start:
		move_and_collide(starting_position - global_position)
		at_start = true
	
	velocity += accel*delta
	velocity += (velocity.length()/terminal_velocity)*-accel*delta
	if global_position.distance_to(cur_target_position) <= 10.0:
		accel = Vector2()
		velocity = Vector2()
	move_and_collide(velocity*delta)

func _on_PossibleSpots_new_position(new_position):
	cur_target_position = new_position
	velocity = velocity.project(new_position - global_position)
	accel = Vector2(movement_accel, 0.0).rotated(global_position.angle_to_point(new_position) + PI)
	print(accel)
	

func _set_starting_position(new_starting_position):
	starting_position = new_starting_position
	cur_target_position = starting_position
	at_start = false

func _on_PossibleSpots_starting_position(position):
	self.starting_position = position
