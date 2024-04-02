{
    //if (trueno)
    //{
        
    //    if (surface_exists(sf_trueno))
    //    {   
    //        surface_set_target(sf_trueno);
    //        draw_clear(c_white)
    //        surface_reset_target();
    //        draw_surface_ext(sf_trueno, 0, 0, 1, 1, 0, c_white, alpha);
    //    }
    //    else
    //    {
    //        sf_trueno = surface_create(room_width, room_height);
    //        surface_set_target(sf_trueno);
    //    }
    //}
	
	if (trueno)
	{
		if (surface_exists(sf_trueno))
        {   
            surface_set_target(sf_trueno);
            draw_clear(c_white)
            surface_reset_target();
            draw_surface_ext(sf_trueno, 0, 0, 1, 1, 0, c_white, alpha);
        }
        else
        {
            sf_trueno = surface_create(room_width, room_height);
            surface_set_target(sf_trueno);
        }
	    //if (surface_exists(sf_trueno))
	    //{
	    //    surface_set_target(sf_trueno);
	    //    draw_clear(c_white);
	    //    draw_surface_ext(sf_trueno, 0, 0, 1, 1, 0, c_white, alpha);
		//	surface_reset_target();
	    //}
	    //else
	    //{
	    //    sf_trueno = surface_create(room_width, room_height);
	    //    surface_set_target(sf_trueno);
	    //    draw_clear(c_white);
		//	//surface_reset_target();
	    //}
	}

	
}

