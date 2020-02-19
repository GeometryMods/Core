pd2=instance_create(x,y+(30*image_xscale)*gravdir,obj_par2)

with(pd2) {
	hspeed=random_range(0,1)*image_xscale
	vspeed=random_range(-3,3)*image_xscale
	image_xscale=random_range(0.2,1)*image_xscale
	image_yscale=image_xscale
	image_blend=global.col2
}
