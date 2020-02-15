globalvar spr_par1, spr_par2, spr_par3;
globalvar obj_par1, obj_par2, obj_par3;

spr_par1 = sprite_add("Objects/Particles/spr_par1.png", 1, false, false, 61, 61)
spr_par1 = sprite_add("Objects/Particles/spr_par2.png", 1, false, false, 8, 8)
spr_par1 = sprite_add("Objects/Particles/spr_par3.png", 1, false, false, 16, 16)


obj_par1 = object_add()
obj_par2 = object_add()
obj_par3 = object_add()

//SET THE SPRITES FOR EVERY OBJECT
object_set_sprite(obj_par1, spr_par1)
object_set_sprite(obj_par2, spr_par2)
object_set_sprite(obj_par3, spr_par3)

//OBJ_PAR_1
object_event_add(obj_par1, ev_create, 0, '
	image_xscale=0.1
	image_yscale=image_xscale
	image_alpha=0.5
	spd=0.0.25
	spd2=0.15
')

object_event_add(obj_par1, ev_step, 0, '
	image_xscale += spd2
	image_yscale = image_xscale
	image_alpha -= spd
	if image_alpha<0
	{
		instance_destroy()
	}
')


//OBJ_PAR_2
object_event_add(obj_par2, ev_create, 0, '
	spd=0.05
	spd2=0.025
')

object_event_add(obj_par2, ev_step, 0, '
	image_alpha-=spd
	image_xscale-=spd2
	image_yscale=image_xscale
	if image_alpha<0
	{
		instance_destroy()
	}
')



//OBJ_PAR_3
object_event_add(obj_par3, ev_create, 0, '
	treff=1
	image_alpha=0.75
	image_xscale=0.7
	image_yscale=image_xscale
')

object_event_add(obj_par3, ev_step, 0, '
	if treff == 0 {
		image_xscale -= 0.04
		image_yscale = image_xscale
		if image_xscale < 0
		{
			instance_destroy()
		}
	} else {
		image_alpha-=0.05
		if image_alpha < 0
		{
			instance_destroy()
		}
	}
')