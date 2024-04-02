function scr_movimientoAndroid() {
	{
	    x += device_get_tilt_y() * velocidad;
    
	    if (device_get_tilt_y() > 0.03)
	    {
	        x += device_get_tilt_y() * velocidad;
	        image_speed = 0.3;
	        sprite_index = sprite[global._id, 1];
			isLeft = false;
			
			if (place_meeting(x, y, o_piso) && o_piso.activarParticulas){
				part_particles_create(o_particulas.particulas, x, bbox_bottom, o_particulas.pisoDerecha, 3);
			}
			
	    }
	    if (device_get_tilt_y() < -0.03)
	    {
	        x += device_get_tilt_y() * velocidad;
	        image_speed = 0.3;
	        sprite_index = sprite[global._id, 0];
			isLeft = true;
			
			if (place_meeting(x, y, o_piso) && o_piso.activarParticulas){
				part_particles_create(o_particulas.particulas, x, bbox_bottom, o_particulas.piso, 3);
			}
			
	    }
	}



}
