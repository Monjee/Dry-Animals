{
	if (o_animal.easteregg == true){
		instance_destroy(id);
	}
    randomize();
    
    vspd = 0;
    gravedad = 1;
    jumpSpeed = 10;
    tiempo = 0;
    dificultad = 100;
    
    motion_set(choose(180, 0), 1 + random(2));
    y = 309;
    
    escala = 1.7
    image_xscale = escala;
}

