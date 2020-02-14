ddb.x = argument0
ddb.y = argument1
ddb.image_xscale = image_xscale
ddb.image_yscale = image_yscale
with ddb {
	if place_meeting(x, y, obj_wall) //or if place_meeting a spike
	{
		with obj_player {
			//TODO: Die
		}
	}
}