function scr_guardar() {
	{
	    ini_open("Gatito.sav");
	    ini_write_real("Dinero", "dinero", global.dinero);
	    if (o_animal.puntuaje > ini_read_real("Puntuaje", "puntuaje", 0))
	    {
	        file_delete("Gatito.sav")//Reescribe
	        ini_open("Gatito.sav");//Crea y abre
	        ini_write_real("Puntuaje", "puntuaje", o_animal.puntuaje);
	        ini_close();
			
			if (gxc_get_query_param("challenge") == global.challengeTopScore && global.muerto)
			{
			    gxc_challenge_submit_score(o_animal.puntuaje);

			    //show_message("Score submitted for the Ultimate Lifesaver challenge!");
			}
			
	    }
	    ini_close();
	}



}
