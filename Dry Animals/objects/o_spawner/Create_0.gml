{
    randomize();
	
	rate = 1;
	
	if (o_animal.easteregg == false){
		
	    tiempo = .04;
	    alarm[0] = tiempo * room_speed;
    
	    tiempoPerro = irandom_range(5, 10);
	    alarm[1] = tiempoPerro * room_speed;
		
	} 
	else{
		
		tiempoConejo = random_range(0.1, 3)
	    alarm[2] = tiempoConejo * room_speed;
		
	}
}

