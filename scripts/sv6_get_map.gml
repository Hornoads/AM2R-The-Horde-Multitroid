/// sv6_get_map()
list = ds_list_create();
ds_list_read(list, base64_decode(file_text_read_string(argument0)));
i = 0;
k = 0;

if(!instance_exists(oClient)){
    repeat (80) {
        j = 0;
        repeat (80) {
            global.dmap[k, j] = readline();
            j += 1;
        }
        k += 1;
    }
} else if(instance_exists(oClient) && global.lastroom == gameoverroom){
    //don't reset values
} else if(instance_exists(oClient) && global.lastroom != gameoverroom && string_count("rm_a", room_get_name(global.lastroom)) == 0){
    repeat (80) {
        j = 0;
        repeat (80) {
            global.dmap[k, j] = readline();
            j += 1;
        }
        k += 1;
    }
} else if(instance_exists(oClient) && global.lastroom != gameoverroom && string_count("rm_a", room_get_name(global.lastroom)) > 0){
    //don't reset values
}

ds_list_clear(list);
