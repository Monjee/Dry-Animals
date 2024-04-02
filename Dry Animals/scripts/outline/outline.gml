/// @description outline(x, y, text, *outline_color);
/// @param x
/// @param  y
/// @param  text
/// @param  *outline_color
function outline() {

	var x1 = argument[0],
	    y1 = argument[1],
	    text = argument[2],
	    c1 = c_black;

	var c2 = draw_get_colour();

	if (argument_count >= 4)
	{
	  c1 = argument[3];
	}

	draw_set_color(c1);


	draw_text(x1 - 1, y1 - 1, string_hash_to_newline(text));
	draw_text(x1, y1 - 1, string_hash_to_newline(text));
	draw_text(x1 + 1, y1 - 1, string_hash_to_newline(text));
	draw_text(x1 - 1, y1, string_hash_to_newline(text));
	draw_text(x1 + 1, y1, string_hash_to_newline(text));
	draw_text(x1 - 1, y1 + 1, string_hash_to_newline(text));
	draw_text(x1, y1 + 1, string_hash_to_newline(text));
	draw_text(x1 + 1, y1 + 1, string_hash_to_newline(text));


	draw_set_color(c2);

	draw_text(x1, y1, string_hash_to_newline(text));



}
