function scr_sistemaMonetario() {
	{
	    var rnd = 0;
	    dineroTimer += 0.001 * room_speed;
	    if (dineroTimer >= 5 && !global.muerto)
	    {
	        rnd = irandom_range(5, 10)
	        dineroTimer = 0;
	        global.dinero += rnd;
	        scr_guardar();
	        part_particles_create(o_particulas.particulas, room_width / 2, 20, o_particulas.pt_billete, rnd);
	        print(string(global.dinero) + " Dinero");
	    }
	}
}
