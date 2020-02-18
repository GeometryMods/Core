globalvar spr_ship_a, spr_ship_b;
globalvar obj_ship;

spr_ship_a = sprite_add("Objects/Players/Ship/spr_ship_a.png", 1, false, false, 48, 58)
spr_ship_b = sprite_add("Objects/Players/Ship/spr_ship_b.png", 1, false, false, 48, 28)
obj_ship = object_add()

object_set_parent(obj_ship, obj_player)
object_set_sprite(obj_ship, spr_ship_a)