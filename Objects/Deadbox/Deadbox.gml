globalvar spr_player_deadbox, obj_player_deadbox;

spr_player_deadbox = sprite_add("Objects/Deadbox/spr_deadbox.png", 1, false, false, 15, 15)
obj_player_deadbox = object_add()

//OBJECT SETTINGS
object_set_sprite(obj_player_deadbox, spr_player_deadbox)
object_set_visible(obj_player_deadbox, false)