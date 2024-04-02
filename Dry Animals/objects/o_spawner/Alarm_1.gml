/// @description Perro
{
	if (o_animal.easteregg == false){
		
	    if(o_tutorial.tutorial == 0)
	    {
	        if (global.muerto == false)
	        {
	            instance_create(0, 327, o_perro);
	        }
	    }
	    if (alarm[1] == 0)
	    {
	        alarm[1] = irandom_range(1, 10) * room_speed;
	    }
		
	}
}

