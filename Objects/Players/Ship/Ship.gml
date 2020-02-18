globalvar spr_ship_a, spr_ship_b;
globalvar obj_ship;

spr_ship_a = sprite_add("Objects/Players/Ship/spr_ship_a.png", 1, false, false, 48, 58)
spr_ship_b = sprite_add("Objects/Players/Ship/spr_ship_b.png", 1, false, false, 48, 28)
obj_ship = object_add()

object_set_parent(obj_ship, obj_player)
object_set_sprite(obj_ship, spr_ship_a)

object_event_add(obj_ship, ev_create, 0, '
	execute_file("Scripts/scr_ini_physics.gml", 2)
	//global.yscroll=0
	fis=0.8
	image_xscale=0.8
	ddb=instance_create(x, y, obj_player_deadbox)
	maxvsp=40
	maxfvsp=15
	col1=global.col1
	col2=global.col2
	hsp=10.6*global.spdboost
	canring=0
	angle=0
	trail=0
	execute_file("Scripts/scr_other_var.gml")
')

object_event_add(obj_ship, ev_step, 0, '
	hsp=10.6*global.spdboost
	execute_file("Scripts/scr_mini_set.gml")
	sb=1
	if !mini
	{
		sb = 1
		grav = 0.6
	}
	else
	{
		sb = 1.5
		grav=0.7
	}
	jumpspd=12*((image_xscale+0.2)*sb)
	fspd = (grav * 2.2)

	execute_file("Scripts/scr_physics.gml")
	if keyboard_check(vk_up) and vsp > -maxfvsp {
		vsp -= fspd
	}
	if vsp > maxfvsp {
		vsp = maxfvsp
	}

	execute_file("Scripts/scr_ring_set.gml")

	execute_file("Scripts/scr_interactive.gml")
	execute_file("Scripts/scr_trail.gml")

	if place_meeting(x, y+gravdir, obj_wall) {
		repeat 2 {
			execute_file("Scripts/scr_sprite.gml")
		}
	}

	execute_file("Scripts/scr_hitbox.gml", x, y-(8*gravdir)*image_xscale)
')

object_event_add(obj_ship, ev_draw, 0, '
	toangle = -vsp * 3
	angle += (toangle - angle)*0.3
	image_yscale = image_xscale * gravdir
	cscale = image_xscale * 0.7

	sprite_set_offset(spr_player_b, 30, 64)
	sprite_set_offset(spr_player_a, 30, 64)

	draw_sprite_ext(spr_player_b, global.cube, x, y, cscale, cscale*gravdir, angle*gravdir+angleplus, global.col2, image_alpha)
	draw_sprite_ext(spr_player_a, global.cube, x, y, cscale, cscale*gravdir, angle*gravdir+angleplus, global.col1, image_alpha)
	
	draw_sprite_ext(spr_ship_b, 1, x, y, image_xscale, image_yscale, angle*gravdir+angleplus, col2, image_alpha)
	draw_sprite_ext(spr_ship_a, 1, x, y, image_xscale, image_yscale, angle*gravdir+angleplus, col1, image_alpha)

')