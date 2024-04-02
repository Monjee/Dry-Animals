function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // o_animal
	global.__objectDepths[1] = 0; // o_perro
	global.__objectDepths[2] = 0; // o_lluvia
	global.__objectDepths[3] = 0; // o_paraguas
	global.__objectDepths[4] = 0; // o_tabla
	global.__objectDepths[5] = -1; // o_credits
	global.__objectDepths[6] = -276447231; // o_polloCaja
	global.__objectDepths[7] = -9999999; // o_topoCaja
	global.__objectDepths[8] = -99999; // o_galloCaja
	global.__objectDepths[9] = -9999999; // o_pajaroCaja
	global.__objectDepths[10] = -999999; // o_tortugaCaja
	global.__objectDepths[11] = -999999; // o_buoBuo
	global.__objectDepths[12] = -99999; // o_pinguinoCaja
	global.__objectDepths[13] = -999999; // o_pajaroVolador
	global.__objectDepths[14] = 0; // o_tienda
	global.__objectDepths[15] = -1; // o_boton_comprar
	global.__objectDepths[16] = -1410065408; // o_equipSkin
	global.__objectDepths[17] = 0; // o_equip
	global.__objectDepths[18] = 0; // o_particulas
	global.__objectDepths[19] = 0; // o_spawner
	global.__objectDepths[20] = 0; // o_tienda_controlador
	global.__objectDepths[21] = 0; // o_botones
	global.__objectDepths[22] = 0; // o_trueno
	global.__objectDepths[23] = 0; // o_piso
	global.__objectDepths[24] = 0; // o_tutorial
	global.__objectDepths[25] = 0; // o_anuncios


	global.__objectNames[0] = "o_animal";
	global.__objectNames[1] = "o_perro";
	global.__objectNames[2] = "o_lluvia";
	global.__objectNames[3] = "o_paraguas";
	global.__objectNames[4] = "o_tabla";
	global.__objectNames[5] = "o_credits";
	global.__objectNames[6] = "o_polloCaja";
	global.__objectNames[7] = "o_topoCaja";
	global.__objectNames[8] = "o_galloCaja";
	global.__objectNames[9] = "o_pajaroCaja";
	global.__objectNames[10] = "o_tortugaCaja";
	global.__objectNames[11] = "o_buoBuo";
	global.__objectNames[12] = "o_pinguinoCaja";
	global.__objectNames[13] = "o_pajaroVolador";
	global.__objectNames[14] = "o_tienda";
	global.__objectNames[15] = "o_boton_comprar";
	global.__objectNames[16] = "o_equipSkin";
	global.__objectNames[17] = "o_equip";
	global.__objectNames[18] = "o_particulas";
	global.__objectNames[19] = "o_spawner";
	global.__objectNames[20] = "o_tienda_controlador";
	global.__objectNames[21] = "o_botones";
	global.__objectNames[22] = "o_trueno";
	global.__objectNames[23] = "o_piso";
	global.__objectNames[24] = "o_tutorial";
	global.__objectNames[25] = "o_anuncios";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
