function scr_dificultad() {
	{
	    tiempo += 0.001 * room_speed;
    
	    if(tiempo >= 5)
	    {
	        tiempo = 0;//Resetea el tiempo
        
	        if(dificultad <= 10) 
	        {
	            exit;
	        }
	        else
	        {
	            dificultad -= 15;
	            o_paraguas.escala -= 0.07;
            
	            //print(string(dificultad) + " Dificultad");
	        }
	    }
	}



}
