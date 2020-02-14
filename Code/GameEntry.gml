/*
 * Some before-run configs
 */
room_speed = 60

globalvar default_debug_room_width;
default_debug_room_width = 100000

room_set_width(room, default_debug_room_width)

/*
 * We enable and set up the views (camera)
 */
room_set_view_enabled(room, true)
room_set_view(room,0,true,0,0,640,480,0,0,640,480,0,0,0,0,0)


//Needed to run first
execute_string(get_external("Rooms/Debug.gml"))

execute_string(get_external("Code/ObjectsLoader.gml"))

//JUST FOR TESTING - DON'T TAKE THIS SERIOUS, IT'LL BE DELETED SOON
instance_create(100, 100, obj_player)
