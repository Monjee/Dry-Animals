//global.confirmado = false;

if(global.muerto == true && o_tabla.visible || o_tienda.visible)
{
    switch(action)
    {
        case 0: //Jugar otra vez
            if (o_tienda.visible = false)
            {
                part_system_destroy(o_particulas.particulas); 
                room_restart();
            }
            break;
            
        case 1: o_tienda.visible = true; //Ir a la tienda
                o_tabla.visible = false;
                o_boton_comprar.visible = true;
                o_equipSkin.visible = true;
            break;
        
        case 2: //Boton salir en la tienda
            if(o_tienda.visible = true || o_credits.visible = true)
            {
                part_system_destroy(o_particulas.particulas);
                room_restart();
            }   
            break;
        
        case 3:
            //o_tabla.visible = true;
            if(o_tienda.visible == false)
            {
                o_credits.visible = true;
                o_boton_comprar.visible = false;
            }
            break;      
    }
}

