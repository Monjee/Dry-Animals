{     
    if (o_tienda.visible)
    {
        print("Equipado");
        ini_open("Gatito.sav");
        ini_write_real("Skins", "-1", numeroDeSkin);//Guarda el skin para que cuando entre lo tenga equipado.
        ini_close();
        
        if(numeroDeSkin == 0)
        {
            o_equipSkin.y = 271;
            o_equipSkin.x = 335;
            o_equipSkin.visible = true;
        }

    }
}


