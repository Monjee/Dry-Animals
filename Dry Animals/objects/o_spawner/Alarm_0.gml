/// @description Lluvia
{
    if(o_tutorial.tutorial == 0)
    {
        repeat(3)
        {
            instance_create(random(room_width), 0, o_lluvia);
        }
    }
    
    if (alarm[0] == 0)
    {
        alarm[0] = tiempo * room_speed;
    }
}

