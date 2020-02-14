globalvar spr_camera, obj_camera;

spr_camera = sprite_add("Objects/Camera/spr_camera.png", 1, false, false, 30, 30)
obj_camera = object_add()

/* OBJECT SETTINGS */
object_set_sprite(obj_camera, spr_camera)

/* OBJECT LOGIC */
object_event_add(obj_camera, ev_create, 0, '
	view_yview = obj_player.y
	view_wview = 995
	view_hview = 664
')