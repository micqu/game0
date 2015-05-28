// Adds an item to the inventory if there is space available
// scr_item_pickup(ITEM ID)

for (i = 0; i < maxItems; i += 1)
{
    if (global.inventory[i] == -1) //if empty
    {
        global.inventory[i] = argument0;
        return(1);
    }
}
return(0);
