{
    if (tuto)
    {
        
        visible = true;
        segundos -= 1;
        
        if(segundos == 0)
        {
            image_index = 1;
        }
        else if (segundos <= -100)
        {
            visible = false;
            tutorial = false;
            ini_open("Gatito.sav");
            ini_write_real("Tutorial", "tutorial", 0);
            ini_close();
            exit;
        }
    }
}

