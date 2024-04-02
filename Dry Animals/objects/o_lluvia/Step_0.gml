{
    y += 8;
    
    if (y >= irandom_range(317, 360))
    {
        part_particles_create(o_particulas.particulas, x, y, o_particulas.pt_lluvia, 5)
        instance_destroy();
    }
}

