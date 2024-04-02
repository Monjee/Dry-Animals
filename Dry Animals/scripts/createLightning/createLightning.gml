// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createLightning(x1, y1, x2, y2, displace, animal_x, animal_y)
{
    if (displace < 10)
    {
        draw_line_width_color(x1, y1, x2, y2, random_range(1, 3), make_color_rgb(80, 207, 242), c_white);
        return;
    }

    var mid_x = (x2 + x1) / 2;
    var mid_y = (y2 + y1) / 2;
    mid_y += random_range(-displace, displace);

    createLightning(x1, y1, mid_x, mid_y, displace / 2, animal_x, animal_y);
    createLightning(mid_x, mid_y, x2, y2, displace / 2, animal_x, animal_y);
}
