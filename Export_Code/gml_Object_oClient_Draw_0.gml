var i, arrDraw, arrID, arrX, arrY, arrSprite, arrImage, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrArmmsl, arrRoom, arrName, arrBlend, arrFXTimer, arrRoomPrev, arrState, sprHeight, arrMapIcon, rectoffset, f, arrList, ID, _x, _y;
if (ds_list_size(roomListData) > 0)
{
    for (i = 0; i < ds_list_size(roomListData); i++)
    {
        arrDraw = ds_list_find_value(roomListData, i)
        arrID = arrDraw[0]
        arrX = arrDraw[1]
        arrY = arrDraw[2]
        arrSprite = arrDraw[3]
        arrImage = arrDraw[4]
        arrA1 = arrDraw[5]
        arrA1X = arrDraw[6]
        arrA1Y = arrDraw[7]
        arrA2 = arrDraw[8]
        arrA2X = arrDraw[9]
        arrA2Y = arrDraw[10]
        arrA2A = arrDraw[11]
        arrMirror = arrDraw[12]
        arrArmmsl = arrDraw[13]
        arrRoom = arrDraw[14]
        arrName = arrDraw[15]
        arrBlend = arrDraw[16]
        arrFXTimer = arrDraw[17]
        arrRoomPrev = arrDraw[18]
        arrState = arrDraw[19]
        if ((arrRoom == room || arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16) && instance_exists(oCharacter) && room != rm_transition)
        {
            if (arrSprite == sSpiderMorphBall || arrSprite == sGSpiderMorphBall || arrSprite == sVSpiderMorphBall || arrSprite == sSpiderMorphBall_fusion || arrSprite == sSpiderMorphBall_fusion_gravity || arrSprite == sSpiderMorphBall_fusion_varia)
            {
                draw_set_blend_mode(bm_add)
                draw_set_alpha((arrFXTimer * 0.1))
                if (global.shaders_compiled && os_type != os_android)
                {
                    pal_swap_set(oControl.SpiderballPalette, arrID, 0)
                    draw_sprite_ext(sSpiderballFX, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                }
                else if (global.shaders_compiled && os_type == os_android)
                {
                    switch arrSprite
                    {
                        case sSpiderMorphBall:
                            draw_sprite_ext(sSpiderballFX, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1080:
                            draw_sprite_ext(sSpiderballFXVaria, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 912:
                            draw_sprite_ext(sSpiderballFXGravity, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1208:
                            draw_sprite_ext(sSpiderballFX_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1638:
                            draw_sprite_ext(sSpiderballFXVaria_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1639:
                            draw_sprite_ext(sSpiderballFXGravity_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                    }

                }
                if global.shaders_compiled
                {
                    pal_swap_reset()
                    shader_reset()
                }
                draw_set_alpha(1)
                draw_set_blend_mode(bm_normal)
            }
            if (arrRoom != room)
            {
                if (arrRoomPrev == room)
                {
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, alpha, arrArmmsl, arrImage, arrID)
                    sprHeight = sprite_get_height(sIdleRight)
                    if (arrSprite != sTurn && arrSprite != sVTurn && arrSprite != sGTurn && arrSprite != sTurn_fusion && arrSprite != sTurn_fusion_varia && arrSprite != sTurn_fusion_gravity)
                        sprHeight = sprite_get_height(arrSprite)
                    if (string_count("AimUp", sprite_get_name(arrSprite)) > 0)
                        sprHeight = sprite_get_height(sIdleRight)
                    if ((string_lower(arrName) == "meep" || string_lower(arrName) == "adamsayz" || string_lower(arrName) == "rememberme?") && string_count("Crouch", sprite_get_name(arrSprite)))
                        sprHeight += 10
                    if (string_lower(arrName) == "omegadruid" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sMOmega_Head_Roar, 2, arrX, (arrY - sprHeight), (0.5 * arrMirror), 0.5, direction, c_white, 1)
                    if (string_lower(arrName) == "meep" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sMiepee, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                    if (string_lower(arrName) == "rememberme?" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sHiggs, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                    if (string_lower(arrName) == "adamsayz" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sAdam, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                    if (string_lower(arrName) == "d-388" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sDVTorso, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                    if (string_lower(arrName) == "quack" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sQuackHead, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                }
            }
            else
            {
                draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, alpha, arrArmmsl, arrImage, arrID)
                sprHeight = sprite_get_height(sIdleRight)
                if (arrSprite != sTurn && arrSprite != sVTurn && arrSprite != sGTurn && arrSprite != sTurn_fusion && arrSprite != sTurn_fusion_varia && arrSprite != sTurn_fusion_gravity)
                    sprHeight = sprite_get_height(arrSprite)
                if (string_count("AimUp", sprite_get_name(arrSprite)) > 0)
                    sprHeight = sprite_get_height(sIdleRight)
                if ((string_lower(arrName) == "meep" || string_lower(arrName) == "adamsayz" || string_lower(arrName) == "rememberme?") && string_count("Crouch", sprite_get_name(arrSprite)))
                    sprHeight += 10
                if (string_lower(arrName) == "omegadruid" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sMOmega_Head_Roar, 2, arrX, (arrY - sprHeight), (0.5 * arrMirror), 0.5, direction, c_white, 1)
                if (string_lower(arrName) == "meep" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sMiepee, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                if (string_lower(arrName) == "rememberme?" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sHiggs, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                if (string_lower(arrName) == "adamsayz" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sAdam, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                if (string_lower(arrName) == "d-388" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sDVTorso, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                if (string_lower(arrName) == "quack" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sQuackHead, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
            }
        }
    }
}
if instance_exists(oMapCursor)
{
    if (ds_list_size(posData) > 0)
    {
        for (i = 0; i < ds_list_size(posData); i++)
        {
            arrMapIcon = ds_list_find_value(posData, i)
            arrID = arrMapIcon[0]
            arrX = arrMapIcon[1]
            arrY = arrMapIcon[2]
            if (arrX != 3 && arrY != 3)
                draw_sprite_ext(oControl.MultitroidMapIcon, (arrID - 1), (arrX * 8), ((arrY * 8) + 32), 1, 1, direction, c_white, oMapCursor.image_alpha)
        }
    }
    rectoffset = 0
    if instance_exists(oMapScrBG2)
        rectoffset = oMapScrBG2.rectoffset
    draw_sprite_ext(sMultitroidMapPlayerCountBox, 1, (view_xview[0] - (oControl.widescreen_space / 2)), ((view_yview[0] + 44) - rectoffset), 1, 1, direction, c_white, 1)
    if (ds_list_size(global.idList) > 1)
    {
        for (f = 0; f < ds_list_size(global.idList); f++)
        {
            arrList = ds_list_find_value(global.idList, f)
            ID = arrList[0, 0]
            _x = (10 * floor((f / 2)))
            _y = (10 * (f % 2))
            if (ID == global.clientID)
                draw_sprite_ext(oControl.MultitroidIcon, (ID - 1), (((view_xview[0] - (oControl.widescreen_space / 2)) + 2) + _x), (((view_yview[0] + 44) + 13) + _y), 1, 1, direction, c_white, 1)
            else
                draw_sprite_ext(oControl.MultitroidIconDark, (ID - 1), (((view_xview[0] - (oControl.widescreen_space / 2)) + 2) + _x), (((view_yview[0] + 44) + 13) + _y), 1, 1, direction, c_white, 1)
        }
    }
    else if (ds_list_size(global.idList) == 1 || ds_list_size(global.idList) == 0)
        draw_sprite_ext(oControl.MultitroidIcon, clamp((global.clientID - 1), 0, 16), ((view_xview[0] - (oControl.widescreen_space / 2)) + 2), ((view_yview[0] + 44) + 13), 1, 1, direction, c_white, 1)
}
