/// @description outline(x, y, text, *outline_color, xscale, yscale);
/// @param x
/// @param  y
/// @param  text
/// @param  *outline_color
/// @param  xscale
/// @param  yscale
function outline_green() {

	var x1 = argument[0],
	    y1 = argument[1],
	    text = argument[2],
	    c1 = c_green,
	    xscale = 1,
	    yscale = 1;

    
	//var c2 = draw_set_colour(c_green);

	if (argument_count >= 6)
	{
	  c1 = argument[3];
	  xscale = argument[4];
	  yscale = argument[5];
	}

	draw_set_color(c1);


	draw_text_ext_transformed(x1 - 1, y1 - 1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1, y1 - 1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1 + 1, y1 - 1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1 - 1, y1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1 + 1, y1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1 - 1, y1 + 1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1, y1 + 1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);
	draw_text_ext_transformed(x1 + 1, y1 + 1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);


	draw_set_color(c2);

	draw_text_ext_transformed(x1, y1, string_hash_to_newline(text), 1, 300, xscale, yscale, image_angle);



}
