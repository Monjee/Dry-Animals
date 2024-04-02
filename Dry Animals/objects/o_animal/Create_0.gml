{
//---[Skins]-------------------------------------------------------------------------------------------------

    //Izquierda = 0,  Derecha = 1
    
    sprite[0, 0] = s_gato_izquierda;
    sprite[0, 1] = s_gato_derecha;
    sprite[1, 0] = s_pollo_izquierda;
    sprite[1, 1] = s_pollo_derecha;
    sprite[2, 0] = s_pinguino_izquierda;
    sprite[2, 1] = s_pinguino_derecha;
    sprite[3, 0] = s_gallo_izquierda;
    sprite[3, 1] = s_gallo_derecha;
    sprite[4, 0] = s_topo_izquierda;
    sprite[4, 1] = s_topo_derecha;
    sprite[5, 0] = s_buo_izquierda;
    sprite[5, 1] = s_buo_derecha;
    sprite[6, 0] = s_tortuga_izquierda;
    sprite[6, 1] = s_tortuga_derecha;
    sprite[7, 0] = s_pajaro_izquierda;
    sprite[7, 1] = s_pajaro_derecha;
    sprite[8, 0] = s_pajaroVolando_izquierda;
    sprite[8, 1] = s_pajaroVolando_derecha;   
    
//---[Jugador]-------------------------------------------------------------------------------------------------
    
	depth = -1000
	easteregg = false;
	
    velocidad = 0;
    gravedad = 1;
    vspd = 0;
    jumpSpeed = 10;
    
    puntuaje = 0;
    
    //Carga el dinero.
    ini_open("Gatito.sav")
    global.dinero = ini_read_real("Dinero", "dinero", 0);
    ini_close();
    
    dineroTimer = 0;
    
    //ANUNCIOS
    muertoTimer = false;
    muerteTimer = 50;
    
    global.muerto = false;
    murio = false;
	
	draw_lightning_timer = 0.5 * room_speed; // Lightning strike duration in seconds
	lightning_x = random_range(x - 200, x + 200);
	wait = false;
	thunderStrike = false;
	
	xstored = 0;
	ystored = 0;
	isLeft = false;
    
    os_powersave_enable(false);
    
    //Tutorial y otros.
    ini_open("Gatito.sav");
	global._id = ini_read_real("Skins", "-1", 0);
    if (!ini_key_exists("Skins", "-1"))
    {
		
        ini_write_real("Skins", "-1", 0);
        ini_write_real("Tutorial", "tutorial", 1)//Define el tutorial a true.
        ini_write_real("DeathCount", "deathCount", 0);
		
    }
	
    ini_write_real("Skins", "0", 0) //Agrega gato al inventario.
	
    sprite_index = sprite[ini_read_real("Skins", "-1", 0), 1];
	
    deathCount = ini_read_real("DeathCount", "deathCount", 0);
    ini_close(); 
	
	
	// Easteregg
	if (global._id == 8)
	{
		
		easteregg = true;
		
		
		image_xscale = 2;
		image_yscale = 2;
		
	    layer_background_sprite(layer_background_get_id("night_background"), bg_easteregg);
		
		y = 110;
		
	}
	
}