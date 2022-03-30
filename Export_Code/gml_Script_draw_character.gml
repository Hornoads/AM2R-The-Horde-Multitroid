if global.shaders_compiled
{
    if (!oControl.msr_fusionsuit)
    {
        if oControl.mod_fusion
        {
            if (global.currentsuit == 0)
                pal_swap_set(sPalFusion0, 1, 0)
            else if (global.currentsuit == 1)
                pal_swap_set(sPalFusion1, 1, 0)
            else if (global.currentsuit == 2)
                pal_swap_set(sPalFusion2, 1, 0)
        }
        else if (os_type != os_android)
        {
            if (global.currentsuit == 0 && oControl.PowerPalette != -1)
                pal_swap_set(oControl.PowerPalette, 1, 0)
            else if (global.currentsuit == 1 && oControl.VariaPalette != -1)
                pal_swap_set(oControl.VariaPalette, 1, 0)
            else if (global.currentsuit == 2 && oControl.GravityPalette != -1)
                pal_swap_set(oControl.GravityPalette, 1, 0)
        }
    }
}
draw_sprite_ext(argument0, argument14, argument1, argument2, argument10, 1, 0, argument11, argument12)
draw_sprite_ext(argument3, argument14, (argument1 + argument4), (argument2 + argument5), argument10, 1, 0, argument11, argument12)
if (argument13 == 1)
    draw_sprite_ext(argument6, argument14, (argument1 + argument7), (argument2 + argument8), argument10, 1, argument9, argument11, argument12)
if (instance_exists(oClient) && instance_exists(oCharacter))
{
    if (oClient.connected && string_lower(oClient.name) == "omegadruid" && string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        draw_sprite_ext(sMOmega_Head_Roar, 2, argument1, (argument2 - sprHeight), (0.5 * argument10), 0.5, direction, c_white, 1)
    }
    if (oClient.connected && string_lower(oClient.name) == "meep" && string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        if string_count("Crouch", sprite_get_name(sprite_index))
            sprHeight += 10
        draw_sprite_ext(sMiepee, 2, argument1, (argument2 - sprHeight), (1 * argument10), 1, direction, c_white, 1)
    }
    if (oClient.connected && string_lower(oClient.name) == "adamsayz" && string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        if string_count("Crouch", sprite_get_name(sprite_index))
            sprHeight += 10
        draw_sprite_ext(sAdam, 2, argument1, (argument2 - sprHeight), (1 * argument10), 1, direction, c_white, 1)
    }
    if (oClient.connected && string_lower(oClient.name) == "rememberme?" && string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        if string_count("Crouch", sprite_get_name(sprite_index))
            sprHeight += 10
        draw_sprite_ext(sHiggs, 2, argument1, (argument2 - sprHeight), (1 * argument10), 1, direction, c_white, 1)
    }
    if (oClient.connected && string_lower(oClient.name) == "d-388" && string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        if string_count("Crouch", sprite_get_name(sprite_index))
            sprHeight += 10
        draw_sprite_ext(sDVTorso, 2, argument1, (argument2 - sprHeight), (1 * argument10), 1, direction, c_white, 1)
    }
    if (oClient.connected && string_lower(oClient.name) == "quack" && string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        if string_count("Crouch", sprite_get_name(sprite_index))
            sprHeight += 10
        draw_sprite_ext(sQuackHead, 2, argument1, (argument2 - sprHeight), (1 * argument10), 1, direction, c_white, 1)
    }
}
if (AFDCheck() == 1 && instance_exists(oCharacter))
{
    if (string_count("JumpLeft", sprite_get_name(sprite_index)) == 0 && string_count("JumpRight", sprite_get_name(sprite_index)) == 0 && string_count("Ball", sprite_get_name(sprite_index)) == 0 && string_count("Walljump", sprite_get_name(sprite_index)) == 0 && string_count("Spacejump", sprite_get_name(sprite_index)) == 0)
    {
        sprHeight = sprite_get_height(sIdleRight)
        if (sprite_index != sTurn && sprite_index != sVTurn && sprite_index != sGTurn && sprite_index != sTurn_fusion && sprite_index != sTurn_fusion_varia && sprite_index != sTurn_fusion_gravity)
            sprHeight = sprite_height
        if (string_count("AimUp", sprite_get_name(sprite_index)) > 0)
            sprHeight = sprite_get_height(sIdleRight)
        if string_count("Crouch", sprite_get_name(sprite_index))
            sprHeight += 10
        draw_sprite_ext(sQuackHead, 2, argument1, (argument2 - sprHeight), (1 * argument10), 1, direction, c_white, 1)
    }
}
shader_reset()
