//We create the room
globalvar rm_debug;
rm_debug = room_add()

/*
 * Some before-run configs
 */

globalvar default_debug_room_width;
default_debug_room_width = 100000

room_set_width(rm_debug, default_debug_room_width)
room_set_height(rm_debug, 664)

/*
 * We enable and set up the views (camera)
 */
room_set_view_enabled(rm_debug, true)
room_set_view(rm_debug,0,true,0,0,995,664,0,0,995,664,0,0,0,0,0)
room_goto(rm_debug)




global.spdboost=1

global.col1 = c_yellow
global.col2 = c_aqua



xx = 30
for(i = 0; i < 100; i+=1) {
	yy = 664 - 30

	room_instance_add(rm_debug, xx, yy, obj_wall)
	xx += 61
}

room_instance_add(rm_debug, 30, 500, obj_player)
room_instance_add(rm_debug, 0, 0, obj_camera)