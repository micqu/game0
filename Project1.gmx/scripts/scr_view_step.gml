/* scr_view_step(x, y, dir, intensity, time);
//
// Arguments:
//   x:               Horizontal position of view. (px)
//   y:               Vertical position of view. (px)
//   dir:             Direction to shake, -1 = all directions. (degrees)
//   intensity:       The maximum amount of pixels to shake. (px)
//   time:            The amount of time the shake will be on. (steps)
//
// Note:
//   Set _shake to true, and time to anything above 0, when you want to activate the shake.
//
// Created by:
//   ThatDudeOverThere (GMC)
*/
{
    var xx, yy, dir, amount_x, amount_y;
    xx = argument0;
    yy = argument1;
    dir = argument2;
    amount_x = 0;
    amount_y = 0;
    
    // Reset variables to be able to shake
    if (_shake == true) {
        _ints = argument3;
        _time = argument4;
        _shake = false
    }
    
    // Shake if time and intensity is bigger than 0
    if (_time > 0 && _ints > 0) {
        var d, a;
        d = round(random(_ints) - random(2 * _ints));
        a = random(360) * min(dir, 0);
        amount_x = lengthdir_x(d, dir + a);
        amount_y = lengthdir_y(d, dir + a);
        _ints -= argument3/_time;
        _time -= 1;
    } else {
        // Reset values
        amount_x = 0;
        amount_y = 0;
        _ints = 0;
        _time = 0;
    }
    
    // Set view
    view_xview = xx + amount_x;
    view_yview = yy + amount_y;
}