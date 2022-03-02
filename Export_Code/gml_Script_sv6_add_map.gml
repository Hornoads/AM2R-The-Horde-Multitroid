var list, str_list;
list = ds_list_create()
i = 0
repeat (96)
{
    j = 0
    repeat (96)
    {
        ds_list_add(list, global.dmap[i, j])
        j += 1
    }
    i += 1
}
str_list = ds_list_write(list)
ds_list_clear(list)
return str_list;
