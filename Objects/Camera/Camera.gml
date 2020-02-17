globalvar spr_camera, obj_camera;

spr_camera = sprite_add("Objects/Camera/spr_camera.png", 1, false, false, 30, 30)
obj_camera = object_add()

/* OBJECT SETTINGS */
object_set_sprite(obj_camera, spr_camera)

/* OBJECT LOGIC */
object_event_add(obj_camera, ev_create, 0, '
	room_speed = 60
')

object_event_add(obj_camera, ev_step, 0, '
	if instance_exists(obj_player)
	{
		view_xview = obj_player.x-view_wview/3
		if global.yscroll
		{
			if obj_player.y<view_yview+(view_hview/3)
			{
				view_yview += ((obj_player.y-(view_hview/3)) - view_yview) * 0.2
			}
			if obj_player.y>view_yview+(view_hview/3)*2
			{
				view_yview += ((obj_player.y-(view_hview/3)*2) - view_yview) * 0.2
			}
		} else {
			view_yview += ((global.ylimit-(view_hview/2)) - view_yview) * 0.1
		}
		if view_xview<0
		{
			view_xview = 0
		}
		if view_yview+view_hview>room_height
		{
			view_yview=room_height-view_hview
		}
	}
')