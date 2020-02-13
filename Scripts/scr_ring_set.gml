if keyboard_check_pressed(vk_up) && !place_meeting(x, y+vsp*-gravdir, obj_wall) {
	canring = 1
}