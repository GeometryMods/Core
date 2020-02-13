globalvar spr_wall, obj_wall;

spr_wall = sprite_add("Objects/Wall1/spr_wall.png", 1, false, false, 30, 30)
obj_wall = object_add()

//OBJECT SETTINGS
object_set_sprite(obj_wall, spr_wall)

//------------- OBJECT LOGIC -------------
/*
 * This doesn't matter, just added for testing
 */
xx = 30
for(i = 0; i < 11; i+=1) {
	yy = room_height - 30

	instance_create(xx, yy, obj_wall)
	xx += 61
}