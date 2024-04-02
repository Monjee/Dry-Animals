{
    randomize();
    trueno = false;
    sf_trueno = surface_create(room_width, room_height);
    truenoTiempo = irandom_range(5, 15);
    alpha = .5;
    
	if (o_animal.easteregg == false){
		alarm[2] = truenoTiempo * room_speed;
	}
}

