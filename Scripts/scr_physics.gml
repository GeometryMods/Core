if fireboost exit;
vsp += grav
if vsp > maxvsp {
	vsp = maxvsp
}

hdir=sign(hsp)
vdir=sign(vsp)*gravdir
//ver collision
if place_meeting(x, y+vsp*gravdir, obj_wall) {
	if avoidup {
		if vsp > 0 {
			while !place_meeting(x, y+gravdir, obj_wall) {
				y+=vdir
			}
			fireboost=0
			canring=0
			trail=0
			vsp=0
		}
	} else {
		while !place_meeting(x, y+gravdir, obj_wall) {
			y += vdir
		}
		fireboost=0
		canring=0
		trail=0
		vsp=0
	}
}
//hor collision
if place_meeting(x+hsp, y, obj_wall) {
	yplus = 0

	repeat 16
	{
		if place_meeting(x+hsp, y-yplus*gravdir, obj_wall) {
			yplus += vdir
		}
	}
	if !place_meeting(x+hsp, y-yplus*gravdir, obj_wall) {
		y -= yplus
	}
}
y+=vsp*gravdir