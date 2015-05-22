
if (argument0 >= argument2) || (argument1 >= argument3) {
    return false;
}

var col = draw_get_color();
draw_set_color(c_white);
d3d_draw_floor(argument0, argument1, 0, argument2, argument3, 0,
 background_get_texture(argument4), 
 (argument2 - argument0) / background_get_width(argument4),
 (argument3 - argument1) / background_get_height(argument4));
draw_set_color(col);
return true;
