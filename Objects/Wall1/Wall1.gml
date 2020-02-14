globalvar spr_wall, obj_wall;

spr_wall = sprite_add("Objects/Wall1/spr_wall.png", 1, false, false, 30, 30)
obj_wall = object_add()

//OBJECT SETTINGS
object_set_sprite(obj_wall, spr_wall)

//------------- OBJECT LOGIC -------------