/// @description
var i_d, stat;

i_d = ds_map_find_value(async_load, "id");
if i_d == global.msg
{
    if ds_map_find_value(async_load, "status")
    {
		if (global.dinero >= global.price){
		global.dinero -= global.price; //Actualiza el precio,
		procesarCompra(global.ID);
		
		//scr_procesarCompra(1, 1);//Guarda skin, y actualiza el precio en datos.
		}
    }
}





















