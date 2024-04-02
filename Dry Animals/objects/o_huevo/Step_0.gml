/// @description
if (despegar){
	y -= huevospd;
	//part_emitter_region(particulas, 0, x, y, x, y, -1, -1 )
	part_particles_create(o_particulas.particulas, x, y, o_particulas.pt_confeti, 10);
} else{

	 shake_x = random_range(-2, 2);
	 shake_y = random_range(-2, 2);
}

















