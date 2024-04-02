audio_stop_all();


var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if (os_type != os_android){
	layer_background_sprite(back_id, bg_tutorial_pc);
} else layer_sequence_create("Instances_1", 185, 71, sequence_celular);