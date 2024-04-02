{
    ini_open("Gatito.sav")
    switch (ini_read_real("Skins", "-1", 0))
    {     
        case 0:
            o_equipSkin.y = 271;
            o_equipSkin.x = 335;
            break;
        case 1://Pollo -
            o_equipSkin.y = 134;
            o_equipSkin.x = 240;
            break;
        case 2://Pinguino
            o_equipSkin.x = 368;
            o_equipSkin.y = 214;
            break;
        case 3://Gallo
            o_equipSkin.y = 134;
            o_equipSkin.x = 368;
            break;
        case 4://Topo
            o_equipSkin.y = 134;
            o_equipSkin.x = 304;
            break;
        case 5://Buo -
            o_equipSkin.y = 214;
            o_equipSkin.x = 304;
            break;
        case 6://Tortuga -
            o_equipSkin.y = 214;
            o_equipSkin.x = 240;
            break;
        case 7://Pajaro
            o_equipSkin.y = 134;
            o_equipSkin.x = 432;
            break;
        case 8://Pajaro Volador
            o_equipSkin.y = 214;
            o_equipSkin.x = 432;
            break;
    }
    ini_close();
}

