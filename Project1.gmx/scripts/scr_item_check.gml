for (i = 0; i < maxItems; i += 1)
{
    if (global.inventory[i] == argument0) //if item is in inventory
    {
        return(1);
    }
}
return(0);


