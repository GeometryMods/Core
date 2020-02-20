//Sprites
globalvar spr_ring1, spr_ring2, spr_ring3, spr_ring4, spr_ring5;
globalvar spr_path1, spr_path2, spr_path3, spr_path4;

globalvar spr_cube_portal, spr_ship_portal;

spr_ring1 = sprite_add("Objects/Special/Rings/spr_ring1.png", 1, false, false, 30, 30)
spr_ring2 = sprite_add("Objects/Special/Rings/spr_ring2.png", 1, false, false, 30, 30)
spr_ring3 = sprite_add("Objects/Special/Rings/spr_ring3.png", 1, false, false, 30, 30)
spr_ring4 = sprite_add("Objects/Special/Rings/spr_ring4.png", 1, false, false, 30, 30)
spr_ring5 = sprite_add("Objects/Special/Rings/spr_ring5.png", 1, false, false, 30, 30)

spr_path1 = sprite_add("Objects/Special/Paths/spr_path1.png", 1, false, false, 30, 30)
spr_path2 = sprite_add("Objects/Special/Paths/spr_path2.png", 1, false, false, 30, 30)
spr_path3 = sprite_add("Objects/Special/Paths/spr_path3.png", 1, false, false, 30, 30)
spr_path4 = sprite_add("Objects/Special/Paths/spr_path4.png", 1, false, false, 30, 30)

spr_cube_portal = sprite_add("Objects/Special/Portals/spr_cube_portal.png", 1, false, false, 34, 84)
spr_ship_portal = sprite_add("Objects/Special/Portals/spr_ship_portal.png", 1, false, false, 34, 84)

//Objects
globalvar obj_ring1, obj_ring2, obj_ring3, obj_ring4, obj_ring5;
globalvar obj_path1, obj_path2, obj_path3, obj_path4;

globalvar obj_cube_portal, obj_ship_portal;

obj_ring1 = object_add()
obj_ring2 = object_add()
obj_ring3 = object_add()
obj_ring4 = object_add()
obj_ring5 = object_add()

obj_path1 = object_add()
obj_path2 = object_add()
obj_path3 = object_add()
obj_path4 = object_add()

obj_cube_portal = object_add()
obj_ship_portal = object_add()


object_set_sprite(obj_ring1, spr_ring1)
object_set_sprite(obj_ring2, spr_ring2)
object_set_sprite(obj_ring3, spr_ring3)
object_set_sprite(obj_ring4, spr_ring4)
object_set_sprite(obj_ring5, spr_ring5)

object_set_sprite(obj_path1, spr_path1)
object_set_sprite(obj_path2, spr_path2)
object_set_sprite(obj_path3, spr_path3)
object_set_sprite(obj_path4, spr_path4)

object_set_sprite(obj_cube_portal, spr_cube_portal)
object_set_sprite(obj_ship_portal, spr_ship_portal)


object_event_add(obj_ring1, ev_create, 0, '
	reverse = false
')

object_event_add(obj_ring2, ev_create, 0, '
	reverse = false
')

object_event_add(obj_ring3, ev_create, 0, '
	reverse = false
')

object_event_add(obj_ring4, ev_create, 0, '
	reverse = false
')

object_event_add(obj_ring5, ev_create, 0, '
	reverse = false
')