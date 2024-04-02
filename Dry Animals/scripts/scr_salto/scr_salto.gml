function scr_salto() {
	{
		if (o_animal.easteregg == false){
		    if (vspd < 10)
		    {
		        vspd += gravedad;
		    }
    
		    if(place_meeting(x, y, o_piso))//Si esta en el piso
		    {
		        vspd = mouse_check_button_pressed(mb_left) * -jumpSpeed; //Saltar
		    }
		    with (o_animal)
		    {
		        if (place_meeting(x, y + 15, o_perro) && vspd > 0) //Collision vertical con perro.
		        {
		            sound_volume(snd_splat, 1);
		            audio_play_sound(snd_splat, 10, false);
		            with(instance_nearest(x, y, o_perro))
		            {
		                var rnd = irandom_range(3, 10);
		                if(irandom(1) == 1)
		                {
		                    global.dinero += rnd;
		                    scr_guardar();
		                    part_particles_create(o_particulas.particulas, x, y, o_particulas.pt_billete2, rnd);  
                     
		                }
		                else
		                {
		                    part_particles_create(o_particulas.particulas, x, y, o_particulas.pt_perroMuerto, 10);
		                }
		                instance_destroy();
		            }
		            vspd = -jumpSpeed;
		            puntuaje += 5;
		            with(o_paraguas)
		            {
		                vspd = -jumpSpeed;
		            }
		        }
		    }
    
		    y += vspd;
		}
	}


}
