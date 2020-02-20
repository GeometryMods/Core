globalvar spr_ground1, obj_ground1, obj_ground2;

spr_ground1 = sprite_add("Objects/Wall1/spr_ground1.png", 1, false, false, 0,0)
obj_ground1 = object_add()
obj_ground2 = object_add()

object_set_sprite(obj_ground1, spr_ground1)
object_set_parent(obj_ground1, obj_wall)

object_set_sprite(obj_ground2, spr_ground1)
object_set_parent(obj_ground2, obj_wall)


object_event_add(obj_ground1, ev_create, 0, '
	iniw=sprite_width
	image_xscale=room_width/iniw
	global.g1y=room_height-164
')

object_event_add(obj_ground1, ev_step, 0, '
	y += ((global.g1y-y))*0.2
')

object_event_add(obj_ground1, ev_draw, 0, '
	jx = 0
	repeat image_xscale
	{
		execute_file("Scripts/draw_sprite2.gml", sprite_index, 0, global.gcolor, x+jx, y)
		jx += iniw
	}
')

object_event_add(obj_ground2, ev_create, 0, '
	iniw = sprite_width
	image_xscale = room_width / iniw
	global.g2y = 0
')

object_event_add(obj_ground2, ev_step, 0, '
	y += (((global.g2y - y) - 7)) * 0.2
')

object_event_add(obj_ground2, ev_draw, 0, '
	jx = 0

	repeat image_xscale
	{
		execute_file("Scripts/draw_sprite2.gml", sprite_index, 0, global.gcolor, x+jx, y)
		jx += iniw
	}
')