///// @description
if (shake_time > 0)
{
    shake_time--;

    var _xval = clamp(choose(-shake_magnitude, shake_magnitude), -view_wview[0] / 2, view_wview[0] / 2);
    //var _yval = clamp(choose(-shake_magnitude, shake_magnitude), -view_hview[0] / 2, view_hview[0] / 2);

    camera_set_view_pos(view_camera[0], initial_view_x + _xval, initial_view_y);

    if (shake_time <= 0)
    {
        camera_set_view_pos(view_camera[0], initial_view_x, initial_view_y);
    }
//}

//if (shake) 
//{ 
//   shake_time -= 1; 
//   var _xval = choose(-shake_magnitude, shake_magnitude); 
//   var _yval = choose(-shake_magnitude, shake_magnitude); 
//   camera_set_view_pos(view_camera[0], _xval, _yval); 

//   if (shake_time <= 0) 
//   { 
//      shake_magnitude -= shake_fade; 

//      if (shake_magnitude <= 0) 
//      { 
//         camera_set_view_pos(view_camera[0], 0, 0); 
//         shake = false; 
//      } 
//   } 
}





















