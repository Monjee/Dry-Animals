/// @description
global.ID = noone;
global.msg = noone;
global.price = noone;
global.instanceID = noone;


function procesarCompra(argument0){
	
		var _numeroDeSkin = argument0;
		global.instanceID.loTiene = true;

	    ini_open("Gatito.sav");
	    ini_write_real("Dinero", "dinero", global.dinero);//Actualizar el dinero
	    ini_write_real("Skins", _numeroDeSkin, _numeroDeSkin)//Guarda el skin.
	    ini_close();

	    print("Compra exitosa");
	    print("Dinero actual " + string(global.dinero));
	  //o_animal.loTiene = true;
}





















