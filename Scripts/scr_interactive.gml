///Rings
if place_meeting(x, y, obj_ring1) and canring
{
	vsp = -jumpspd
	canring = 0
	trail = 1

	__obj = instance_nearest(x, y, obj_ring1)
	if __obj.reverse {
		global.spdboost *= -1
	}
}

if place_meeting(x, y, obj_ring2) and canring
{
	vsp = -jumpspd+2
	canring = 0
	trail = 1

	__obj = instance_nearest(x, y, obj_ring2)
	if __obj.reverse {
		global.spdboost *= -1
	}
}

if place_meeting(x, y, obj_ring3) and canring
{
	gravdir *= -1
	vsp = 20
	canring = 0
	trail = 1

	__obj = instance_nearest(x, y, obj_ring3)
	if __obj.reverse {
		global.spdboost *= -1
	}
}

if place_meeting(x, y, obj_ring4) and canring
{
	gravdir*=-1
	canring=0
	vsp=-jumpspd
	trail=1
	
	__obj = instance_nearest(x, y, obj_ring4)
	if __obj.reverse {
		global.spdboost *= -1
	}
}

if place_meeting(x, y, obj_ring5) and canring {
	vsp=jumpspd
	canring=0
	trail=1
}

//Paths

if place_meeting(x, y, obj_path1)
{
	vsp = -jumpspd * 1.5
	trail = 1
}

if place_meeting(x, y, obj_path2)
{
	vsp = -jumpspd + 2
	trail = 1
}

if place_meeting(x, y, obj_path3)
{
	gravdir *= -1
	vsp = 20
	trail = 1
}

if place_meeting(x, y, obj_path4)
{
	vsp = -jumpspd - 16
	trail = 1
}