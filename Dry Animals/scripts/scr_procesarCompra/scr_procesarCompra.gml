/// @description scr_procesarCompra(skin, numero de skin)
/// @param skin
/// @param  numero de skin
function scr_procesarCompra(argument0, argument1) {
	{
	    var _numeroDeSkin = argument0;

	    ini_open("Gatito.sav");
	    ini_write_real("Dinero", "dinero", global.dinero);//Actualizar el dinero
	    ini_write_real("Skins", argument1, _numeroDeSkin)//Guarda el skin.
	    ini_close();

	    print("Compra exitosa");
	    print("Dinero actual " + string(global.dinero));
	    loTiene = true;
	}



}
