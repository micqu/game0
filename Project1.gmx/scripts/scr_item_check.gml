// Returns true if an item is in the inventory
// scr_item_check(ITEM ID)

for (i = 0; i < maxItems; i += 1)
{
    if (global.inventory[i] == argument0)
    {
        return(1);
    }
}
return(0);

