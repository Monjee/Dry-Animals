function scr_movimientoPC() {
	acceleration = 0.5;
	deceleration = 0.3;
	max_speed = 5;
	
    if (!global.muerto){
        if (keyboard_check(vk_left))
        {
            velocidad -= acceleration;
            if (velocidad < -max_speed) velocidad = -max_speed; // Limit velocity to maximum speed
        }
        else if (keyboard_check(vk_right))
        {
            velocidad += acceleration;
            if (velocidad > max_speed) velocidad = max_speed; // Limit velocity to maximum speed
        }
        else
        {
            // If no keys are pressed, decelerate
            if (velocidad > 0) {
                velocidad -= deceleration;
                if (velocidad < 0) velocidad = 0; // Ensure velocity doesn't become negative
            } else if (velocidad < 0) {
                velocidad += deceleration;
                if (velocidad > 0) velocidad = 0; // Ensure velocity doesn't become positive
            }
        }
        
        x += velocidad;

        if (velocidad != 0) {
            if (velocidad > 0) {
                sprite_index = sprite[global._id, 1];
            } else {
                sprite_index = sprite[global._id, 0];
            }
            image_speed = 0.3;
        } else {
            image_speed = 0;
        }

        isLeft = velocidad < 0;

        if (place_meeting(x, y, o_piso) && o_piso.activarParticulas && velocidad != 0){
            if (isLeft) {
                part_particles_create(o_particulas.particulas, x - 8, bbox_bottom, o_particulas.piso, 3);
            } else {
                part_particles_create(o_particulas.particulas, x + 8, bbox_bottom, o_particulas.pisoDerecha, 3);
            }
        }
    }
}
