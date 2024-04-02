{
    draw_self();
    draw_set_color(c_white);
    draw_set_font(f_font);
        
    ini_open("Gatito.sav");//Muestra el dinero
    draw_sprite_ext(s_billete, 0, 40, 48, .6, .6, image_angle, image_blend, 1);
    outline(70, 28, ini_read_real("Dinero", "dinero", 0), c_black);
    ini_close();
    
    if(o_tienda.visible = true) 
    {
        exit;
        /*Si el usuario da click en la tienda, el score seguira mostrandose; obstruyendo la vision.
         Por eso se pone el exit en este lugar. Si se pone mas arriba no se mostrara el dinero disponible
         Si se pone el exit aqui el codigo de abajo sera ignorado, pero el de arriba seguira ejecutandose*/
    }
    
    if(global.muerto == false)
    {
        outline(room_width / 2 - 5,32, floor(puntuaje), c_black); //Muestra el puntuaje arriba
    }
    else
    {
        //outline(room_width / 2 + 5, room_height/2 - 90, floor(puntuaje), c_black); //Muestra el puntuaje en la tabla
        
        
        if (!wait){
        if ((floor(puntuaje)) >= 10) && ((floor(puntuaje) < 90)) //Si el puntuaje tiene 2 digitos
        {
            outline(room_width / 2 + 3, room_height / 2 - 90, (floor(puntuaje)));
        }
        else if ((floor(puntuaje)) < 10) //Si el puntuaje tiene 1 digito
        {
            outline(room_width / 2 + 6, room_height / 2 - 90, (floor(puntuaje)));
        }
        else if(((floor(puntuaje)) >= 100) && ((floor(puntuaje))) < 900) //Si el puntuaje tiene 3 digitos
        {
            outline(room_width / 2 - 10, room_height / 2 - 90, (floor(puntuaje)));
        }
        else if ((floor(puntuaje)) >= 1000) //Si el puntuaje tiene 4 digitos
        {
            outline(room_width / 2 - 15, room_height / 2 - 90, (floor(puntuaje)));
        }
		}
    }
}

if (thunderStrike){ 
	
	
	if (!instance_exists(o_tiza))
	{ 
		var tiza = instance_create(xstored, ystored, o_tiza)
		
		
		
		
		if (isLeft)
		{
			tiza.image_xscale = -1;
		}
		else
		{
			tiza.image_xscale = 1;
		}	
	
	}
	
	if (draw_lightning_timer > 0)
	{
		// Hacer efecto de trueno y sonido
		o_trueno.trueno = true;
		
		if (!audio_is_playing(snd_strike)){
		audio_play_sound(snd_strike, 10, false)
		}
		
		if (choose(1, 2) == 1)
	    {
			if (!audio_is_playing(snd_trueno)) audio_play_sound(snd_trueno, 1, false)
	    }
	    else
	    {
	        if (!audio_is_playing(snd_trueno2)) audio_play_sound(snd_trueno2, 1, false)
	    }
		
		// Draw lightning
	    draw_set_color(make_color_rgb(80, 207, 242));
		if (irandom_range(0, 5) == 3)
		{
			createLightning(lightning_x, 0, xstored, ystored, 50, xstored, ystored);
			createLightning(lightning_x, 0, xstored, ystored, 150, xstored, ystored);
		}else
		{
			createLightning(lightning_x, 0, xstored, ystored, 65, xstored, ystored);
		}
	    draw_lightning_timer--; // Decrement the timer
	} 
	else 
	{
		wait = false;
	}
	draw_set_color(c_black);
}