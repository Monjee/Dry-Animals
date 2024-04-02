{
    azul = make_colour_rgb(174, 214, 232);

    particulas = part_system_create();
    
    pt_lluvia = part_type_create();
    part_type_shape(pt_lluvia,pt_shape_disk);
    part_type_size(pt_lluvia,0.5,0.5,0,0);
    part_type_scale(pt_lluvia,0.10,0.10);
    part_type_color1(pt_lluvia, azul);
    part_type_speed(pt_lluvia,1,1,0,0);
    part_type_direction(pt_lluvia,0,180,0,0);
    part_type_orientation(pt_lluvia,0,0,0,0,1);
    part_type_life(pt_lluvia,10,20);
    
    pt_billete = part_type_create();

    part_type_sprite(pt_billete,s_billete,0,0,0);
    part_type_size(pt_billete,0.50,0.50,0,0);
    part_type_scale(pt_billete,1,1);
    part_type_alpha3(pt_billete,0,1,0);
    part_type_speed(pt_billete,2,2,0,0);
    part_type_direction(pt_billete,180,359,0,0);
    part_type_gravity(pt_billete,0,270);
    part_type_orientation(pt_billete,0,359,0,0,1);
    //part_type_blend(pt_billete,1);
    part_type_life(pt_billete,60,70);
    
    pt_billete2 = part_type_create();

    part_type_sprite(pt_billete2,s_billete,0,0,0);
    part_type_size(pt_billete2,0.50,0.50,0,0);
    part_type_scale(pt_billete2,1,1);
    part_type_alpha3(pt_billete2,0,1,0);
    part_type_speed(pt_billete2,2,2,0,0);
    part_type_direction(pt_billete2,0, 180,0,0);
    part_type_gravity(pt_billete2,0,270);
    part_type_orientation(pt_billete2,0,359,0,0,1);
    //part_type_blend(pt_billete,1);
    part_type_life(pt_billete2,60,70);
    
    
    
    particle1 = part_type_create();
    part_type_shape(particle1,pt_shape_smoke);
    part_type_size(particle1,0.32,0.52,0,0);
    part_type_scale(particle1,2.87,2.81);
    part_type_color3(particle1,4400387,5534750,288523);
    part_type_alpha3(particle1,0.51,0.47,0.08);
    part_type_speed(particle1,1,20,0.01,0);
    part_type_direction(particle1,0,190,1,0);
    part_type_gravity(particle1,0,270);
    part_type_blend(particle1,1);
    part_type_life(particle1,41,100);
    
    pt_perroMuerto = part_type_create();
    part_type_shape(pt_perroMuerto,pt_shape_smoke);
    part_type_size(pt_perroMuerto,.3,.3,0,0);
    part_type_scale(pt_perroMuerto,1.2,1.2);
    part_type_color3(pt_perroMuerto,12570069,5600117,13886690);
    part_type_alpha1(pt_perroMuerto,1);
    part_type_speed(pt_perroMuerto,1,10,.08,0);
    part_type_direction(pt_perroMuerto,0,180,0,0);
    part_type_gravity(pt_perroMuerto,0,270);
    part_type_orientation(pt_perroMuerto,0,0,4,0,1);
    part_type_blend(pt_perroMuerto,1);
    part_type_life(pt_perroMuerto,20,30);
	
	pt_confeti = part_type_create();
    part_type_shape(pt_confeti,pt_shape_square);
    part_type_size(pt_confeti,.09,.09,0,0);
    part_type_scale(pt_confeti,1,1);
    part_type_color3(pt_confeti,c_fuchsia,c_yellow,c_blue);
    part_type_alpha2(pt_confeti,1,0);
    part_type_speed(pt_confeti,1,2,0,0);
    part_type_direction(pt_confeti,90,0,0,20);
    part_type_gravity(pt_confeti,0,270);
    part_type_orientation(pt_confeti,0,0,0,20,1);
    part_type_blend(pt_confeti,0);
    part_type_life(pt_confeti,10,30);
	
	pt_bunnyMuerto = part_type_create();
    part_type_shape(pt_bunnyMuerto,pt_shape_square);
    part_type_size(pt_bunnyMuerto,.1,.1,0,0);
    part_type_colour_mix(pt_bunnyMuerto, c_fuchsia, c_yellow);
    part_type_alpha1(pt_bunnyMuerto,1);
    part_type_speed(pt_bunnyMuerto,1,5,0,0);
    part_type_direction(pt_bunnyMuerto,0,180,0,0);
    part_type_gravity(pt_bunnyMuerto,0,270);
    part_type_orientation(pt_bunnyMuerto,0,0,4,0,1);
    part_type_blend(pt_bunnyMuerto,0);
    part_type_life(pt_bunnyMuerto,20,30);

	
	pt_mierda = part_type_create();
	part_type_shape(pt_mierda, pt_shape_disk);
	part_type_size(pt_mierda, 0.03, 0.05, 0, 0);
	part_type_orientation(pt_mierda, 0, 0, 0, 0, 1);
	part_type_color3(pt_mierda, 16777215, 16777215, 16777215);
	part_type_alpha3(pt_mierda, 1, 1, 0);
	part_type_blend(pt_mierda, 0);
	part_type_life(pt_mierda, 5, 20);
	part_type_speed(pt_mierda, 1, 5, 0, 0.5);
	part_type_direction(pt_mierda, 0, 180, 0, 0);
	part_type_gravity(pt_mierda, 0.15, 270);
	
	piso = part_type_create();
    part_type_shape(piso,pt_shape_square);
    part_type_size(piso,0.05,0.05,0,0);
    part_type_scale(piso,1,1);
    part_type_color1(piso,12762775);
    part_type_alpha2(piso,1,0);
    part_type_speed(piso,0.50,1.50,0,0);
    part_type_direction(piso,0,40,0,0);
    part_type_gravity(piso,0,270);
    part_type_orientation(piso,0,0,0,0,1);
    part_type_blend(piso,0);
    part_type_life(piso,15,15);
    
    pisoDerecha = part_type_create();
    part_type_shape(pisoDerecha,pt_shape_square);
    part_type_size(pisoDerecha,0.05,0.05,0,0);
    part_type_scale(pisoDerecha,1,1);
    part_type_color1(pisoDerecha,12762775);
    part_type_alpha2(pisoDerecha,1,0);
    part_type_speed(pisoDerecha,0.50,1.50,0,0);
    part_type_direction(pisoDerecha,150,190,0,0);
    part_type_gravity(pisoDerecha,0,270);
    part_type_orientation(pisoDerecha,0,0,0,0,1);
    part_type_blend(pisoDerecha,0);
    part_type_life(pisoDerecha,15,15);
}

