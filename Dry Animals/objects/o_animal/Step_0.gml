{
    //var instanceNearest;
    
    //ini_open("Gatito.sav")
    //global.dinero = ini_read_real("Dinero", "dinero", 0);
    //global._id = ini_read_real("Skins", "-1", 0)
    //ini_close();
    
    if (murio)//Murio (Sistema de timer por el problema de los anuncios)
    {
        with(o_paraguas)
        {
            instance_destroy();
            part_particles_create(o_particulas.particulas, x, y, o_particulas.particle1, 60);
        }
        
        if (muertoTimer)
        {
            muerteTimer -= 1;
            if (muerteTimer <= 0)
            {
                global.muerto = true;
                image_speed = 0;
                muerteTimer = 0;
                exit;
            }
        }
        else
        {
            global.muerto = true;
            exit;
        }
    }
    
    //No dar puntos en el tutorial o al morir.
    if (o_tutorial.tutorial == 0 && global.muerto == false)
    {
        puntuaje += 0.001 * room_speed;
    }

    //Movimiento
    image_speed = 0;
    scr_movimientoPC();
    scr_movimientoAndroid();
    scr_salto();
    scr_sistemaMonetario();
    
    //Colision con lluvia
    if (place_meeting(x, y, o_lluvia)) 
    {
		wait = true;
		thunderStrike = true;
        //part_particles_create(o_particulas.particulas, x, y, o_particulas.particle1, 60);
		xstored = xprevious
		ystored = yprevious
		
        y = 1000;//Quita al jugador de la pantalla.
        audio_play_sound(snd_muerte, 10, false);
		global.muerto = true;
        scr_guardar();
        cuentaDeMuertes();
		//global.muerto = true;
        //murio = true;
		
    }
    
    //Colision con perro.
    if (place_meeting(x, y, o_perro)) 
    {
        global.muerto = true;
        part_particles_create(o_particulas.particulas, x, y, o_particulas.particle1, 60);
        y = 1000;//Quita al jugador de la pantalla.
        audio_play_sound(snd_muerte, 10, false);
        scr_guardar();
        cuentaDeMuertes();
        //murio = true;
    }
	
	var huevo = instance_place(x, y, o_huevo);
	
	if (place_meeting(x, y, o_huevo))
	{
		part_particles_create(o_particulas.particulas, x, y, o_particulas.particle1, 60);
		y = 1000
		instance_destroy(huevo);
		audio_play_sound(snd_muerte, 10, false);
		//murio = true;
		global.muerto = true;
	}
    
    if (sprite_index == sprite[8, 0] || (sprite_index == sprite[8, 1]))//Animacion de pajaro.
    {
        image_speed = 0.3;
    }
	
	if (easteregg)
	{
		if (audio_is_playing(snd_lluvia) || audio_is_playing(snd_musica))
		{
			audio_stop_sound(snd_musica);
			audio_stop_sound(snd_lluvia);
		}
		
		if (!audio_is_playing(snd_musicaEaster))
		{
			audio_play_sound(snd_musicaEaster, 10, true);
		}
		
		if (mouse_check_button_released(mb_left) && !instance_exists(o_mierda))
		{
			instance_create(x, y + 7, o_mierda)
		}
		
	} 
	else
	{
		if (audio_is_playing(snd_musicaEaster))
		{
			audio_stop_sound(snd_musicaEaster);
		}
	}
}

