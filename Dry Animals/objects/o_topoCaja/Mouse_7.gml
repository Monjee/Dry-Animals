{
    if(o_tienda.visible = true)
    {
		global.ID = 4;
		global.price = precio;
		global.instanceID = id;
		
        ini_open("Gatito.sav")
        var test = ini_read_real("Skins", "4", -2); //Es para verificar si el usuario tiene el skin deseado.
        if(test == -2) //Si no tiene el skin la variable retornara -2.
        {
            //Si esta indefinido, entonces el usuario aun no tiene el skin, por lo cual lo puede comprar, si tiene el dinero.
            if (global.dinero >= precio)
            {
                //o_areYouSure.visible = true;
                window_set_caption("Shop"); //Titulo de la ventana.
                //if (show_question("Are you sure?"))//Pregunta si esta seguro de la compra.
				
				global.msg = show_question_async("Are you sure");
				
				//if (show_question_async("Are you sure?"))//Pregunta si esta seguro de la compra.
               // {
                    //Si confirmo
                  //  global.dinero -= precio; //Actualiza el precio,
                 //   scr_procesarCompra(1, 1);//Guarda skin, y actualiza el precio en datos.
               // }        
            }
            else
            {
                print("No tienes dinero");
                global.msg = show_message_async("Not enough money.");
            }
        }
        else // Si esta definido, entonces equipara el skin.
        {
            print("Equipado");
            ini_open("Gatito.sav");
            ini_write_real("Skins", "-1", 4);//Guarda el skin para que cuando entre lo tenga equipado.
            ini_close();
            //global._id = numeroDeSkin;
            
            switch(4)
            {
                case 0:
                    o_equipSkin.y = 271;
                    o_equipSkin.x = 335;
                    o_equipSkin.visible = true;
                    break;
                case 1://Pollo -
                    o_equipSkin.y = 134;
                    o_equipSkin.x = 240;
                    o_equipSkin.visible = true;
                    break;
                case 2://Pinguino
                    o_equipSkin.x = 368;
                    o_equipSkin.y = 214;
                    o_equipSkin.visible = true;
                    break;
                case 3://Gallo
                    o_equipSkin.y = 134;
                    o_equipSkin.x = 368;
                    o_equipSkin.visible = true;
                    break;
                case 4://Topo
                    o_equipSkin.y = 134;
                    o_equipSkin.x = 304;
                    o_equipSkin.visible = true;
                    break;
                case 5://Buo -
                    o_equipSkin.y = 214;
                    o_equipSkin.x = 304;
                    o_equipSkin.visible = true;
                    break;
                case 6://Tortuga -
                    o_equipSkin.y = 214;
                    o_equipSkin.x = 240;
                    o_equipSkin.visible = true;
                    break;
                case 7://Pajaro
                    o_equipSkin.y = 134;
                    o_equipSkin.x = 432;
                    o_equipSkin.visible = true;
                    break;
                case 8://Pajaro Volador
                    o_equipSkin.y = 214;
                    o_equipSkin.x = 432;
                    o_equipSkin.visible = true;
                    break;
            }
        }
        ini_close();
    }
}


