// Returns true if a point is inside a box
//
// Argument:
//  0: point x
//  1: point y
//  2: box x
//  3: box y
//  4: box width
//  5: box height
//
{
    return ((argument0 > argument2) &&
            (argument1 > argument3) &&
            (argument0 < argument2 + argument4) &&
            (argument1 < argument3 + argument5));
}