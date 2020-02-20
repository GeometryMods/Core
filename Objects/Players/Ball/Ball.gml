//The ball required vars
globalvar spr_ball_a, spr_ball_b, obj_ball;

spr_ball_a = sprite_add("Objects/Players/Ball/spr_ball_a.png", 1, false, false, 40, 40)
spr_ball_b = sprite_add("Objects/Players/Ball/spr_ball_b.png", 1, false, false, 40, 40)

obj_ball = object_add()

object_set_sprite(obj_ball, spr_ball_a)
object_set_parent(obj_ball, obj_player)

object_event_add(obj_ball, ev_create, 0, '

	execute_file("Scripts/scr_ini_physics.gml", 3)
	global.yscroll = 0
	fis = 0.8
	image_xscale = 0.8
	image_yscale = 0.8
	ddb = instance_create(x, y, obj_player_deadbox)
	avoidup = 0
	col1 = global.col1
	col2 = global.col2
	jumpspd = 12
	hsp = 10.6 * global.spdboost
	canring = 0
	angle = 0
	trail = 0
	execute_file("Scripts/scr_other_var.gml")

')

object_event_add(obj_ball, ev_step, 0, '
	hsp = 10.6 * global.spdboost
	if mini {
		jumpspd = 10
	} else {
		jumpspd = 12
	}
	execute_file("Scripts/scr_mini_set.gml")
	execute_file("Scripts/scr_physics.gml")

	if keyboard_check_pressed(vk_up) {
		if place_meeting(x, y+gravdir, obj_wall) {
			gravdir *= -1
			vsp = 5
		}
	}

	execute_file("Scripts/scr_ring_set.gml")
	execute_file("Scripts/scr_interactive.gml")

	if trail {
		execute_file("Scripts/scr_trail.gml")
	}
	if place_meeting(x, y+gravdir, obj_wall) {
		repeat 2 {
			execute_file("Scripts/scr_sprite.gml")
		}
	}

	execute_file("Scripts/scr_hitbox.gml", x, y)
')

object_event_add(obj_ball, ev_draw, 0, '
	angle -= hsp * gravdir
	draw_sprite_ext(spr_ball_a, 0, x, y, image_xscale, image_yscale, angle, col1, image_alpha)
	draw_sprite_ext(spr_ball_b, 0, x, y, image_xscale, image_yscale, angle, col2, image_alpha)
')