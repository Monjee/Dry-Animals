{
    draw_self();
    draw_set_colour(c_white);
    ini_open("Gatito.sav");
    //Si el puntuaje tiene 2 digitos
    if ((floor(ini_read_real("Puntuaje", "puntuaje", 0)) >= 10) && (floor(ini_read_real("Puntuaje", "puntuaje", 0)) < 90))
    {
        outline(room_width / 2 + 3, room_height / 2 - 20, floor(ini_read_real("Puntuaje", "puntuaje", 0)));
    }
    //Si el puntuaje tiene 1 digito
    else if (floor(ini_read_real("Puntuaje", "puntuaje", 0)) < 10)
    {
        outline(room_width / 2 + 6, room_height / 2 - 20, floor(ini_read_real("Puntuaje", "puntuaje", 0)));
    }
    //Si el puntuaje tiene 3 digitos
    else if((floor(ini_read_real("Puntuaje", "puntuaje", 0)) >= 100) && (floor(ini_read_real("Puntuaje", "puntuaje", 0)) < 900))
    {
        outline(room_width / 2 - 10, room_height / 2 - 20, floor(ini_read_real("Puntuaje", "puntuaje", 0)));
    }
    //Si el puntuaje tiene 4 digitos
    else if (floor(ini_read_real("Puntuaje", "puntuaje", 0)) >= 1000)
    {
        outline(room_width / 2 - 15, room_height / 2 - 20, floor(ini_read_real("Puntuaje", "puntuaje", 0)));
    }
    ini_close();
}

