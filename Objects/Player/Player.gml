//The player required vars
globalvar spr_player_a, spr_player_b, obj_player;

spr_player_a = sprite_add("Objects/Player/spr_player_a.png", 1, false, false, 30, 30)
spr_player_b = sprite_add("Objects/Player/spr_player_b.png", 1, false, false, 30, 30)
obj_player = object_add()

//OBJECT SETTINGS
object_set_sprite(obj_player, spr_player_a)


//--------------- THE OBJECT LOGIC ---------------
object_event_add(obj_player, ev_create, 0, '
	hsp=10.6*global.spdboost
	execute_file("Scripts/scr_ini_physics.gml", 5)
	sprite_set_offset(sprite_index, 30, 30)
	sprite_set_offset(sprite_index+1, 30, 30)
	global.yscroll=1
	global.g1y=room_height-164
	global.g2y=0
	fis=1
	image_xscale=1
	image_yscale=1
	//TODO: Deadbox
	avoidup=1
	col1=global.col1
	col2=global.col2

	canring = 0
	angle = 0
	trail = 0
	execute_file("Scripts/scr_other_var.gml")
	fbspd=12
')

object_event_add(obj_player, ev_step, 0, '
	hsp=10.6*global.spdboost
	execute_file("Scripts/scr_mini_set.gml")
	execute_file("Scripts/scr_jboost_set.gml")
	jumpspd=20*execute_file("Scripts/scr_jboost.gml")
	execute_file("Scripts/scr_ring_set.gml")
	execute_file("Scripts/scr_physics.gml")
	if(keyboard_check(vk_up)) {
		if(place_meeting(x, y+gravdir, obj_wall)) {
			vsp = -jumpspd
		}
	}
')