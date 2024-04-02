/// @description
if (vspd < 10)
{
	vspd += gravedad;
}

y += vspd;


if (place_meeting(x, y, o_piso))
{
	audio_play_sound(choose(snd_impacto_cagada1, snd_impacto_cagada2, snd_impacto_cagada3), 10, false);
	part_particles_create(o_particulas.particulas, x, y, o_particulas.pt_mierda, 20);
	instance_destroy(self);
}

var conejo = instance_place(x, y, o_conejo)

if (place_meeting(x, y, o_conejo))
{
	part_particles_create(o_particulas.particulas, conejo.x, conejo.y + 15, o_particulas.pt_bunnyMuerto, 20);
	audio_play_sound(snd_pop, 10, false);
	instance_destroy(conejo);
	o_animal.puntuaje += 15;
	instance_destroy(self);
}


















