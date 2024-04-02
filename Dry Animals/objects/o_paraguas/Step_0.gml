{
    image_xscale = escala;
    
    /**if(global.muerto == true)
    {
        instance_destroy();
        part_particles_create(o_particulas.particulas, x, y, o_particulas.particle1, 60);
        
    }**/

    if (irandom(dificultad) = 1) //"Dificultad" Cambia de direccion cada que irandom cae en un "1"
    { 
        motion_set(choose(180, 0), 1 + random(2));
    }
    if (x <= 100) //Limite en "x" para que no se salga del room
    {
        motion_set(0, 1 + random(2));
    }
    if (x >= room_width - 132)//Limite en "x" para que no se salga del room
    {
        motion_set(180, 1 + random(2));
    }
    
    scr_dificultad();
    scr_salto();
}

/* */
/*  */
