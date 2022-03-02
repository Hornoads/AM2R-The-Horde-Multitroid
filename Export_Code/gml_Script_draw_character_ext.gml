var ID;
ID = argument15
if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.mod_fusion && (!oControl.msr_fusionsuit))
    {
        if (global.currentsuit == 0)
            pal_swap_set(sPalFusion0, 1, 0)
        else if (global.currentsuit == 1)
            pal_swap_set(sPalFusion1, 1, 0)
        else if (global.currentsuit == 2)
            pal_swap_set(sPalFusion2, 1, 0)
    }
    else if (global.currentsuit == 0)
        pal_swap_set(oControl.PowerPalette, 1, 0)
    else if (global.currentsuit == 1)
        pal_swap_set(oControl.VariaPalette, 1, 0)
    else if (global.currentsuit == 2)
        pal_swap_set(oControl.GravityPalette, 1, 0)
}
if (global.shaders_compiled && os_type != os_android)
{
    if oControl.mod_fusion
        pal_swap_set(oControl.MultitroidPaletteFusion, ID, 0)
    else
        pal_swap_set(oControl.MultitroidPalette, ID, 0)
}
draw_sprite_ext(argument0, argument14, argument1, argument2, argument10, 1, 0, argument11, argument12)
draw_sprite_ext(argument3, argument14, (argument1 + argument4), (argument2 + argument5), argument10, 1, 0, argument11, argument12)
if (global.shaders_compiled && os_type != os_android)
    pal_swap_set(oControl.MultitroidPalette, ID, 0)
if (argument13 == 1)
    draw_sprite_ext(argument6, argument14, (argument1 + argument7), (argument2 + argument8), argument10, 1, argument9, argument11, argument12)
shader_reset()
if (global.shaders_compiled && os_type != os_android)
    pal_swap_reset()
