var i, arrDraw, arrID, arrX, arrY, arrSprite, arrImage, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrArmmsl, arrRoom, arrName, arrBlend, arrFXTimer, arrRoomPrev, arrState, showName, text, offset;
if (!instance_exists(oClient))
    instance_destroy()
else if (ds_list_size(oClient.roomListData) > 0)
{
    for (i = 0; i < ds_list_size(oClient.roomListData); i++)
    {
        arrDraw = ds_list_find_value(oClient.roomListData, i)
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
            showName = 1
            switch oControl.showname
            {
                case "disabled":
                    showName = 0
                    break
                case "enabled":
                    showName = 1
                    break
            }

            if showName
            {
                if (arrRoom == room)
                    text = arrName
                else if (arrRoom == 10)
                    text = (arrName + ": collecting item")
                else
                    text = (arrName + ": paused")
                if (arrRoom != room)
                {
                    if (arrRoomPrev == room)
                    {
                        offset = 52
                        if (string_lower(arrName) == "meep")
                            offset = 54
                        if (string_lower(arrName) == "omegadruid")
                            offset = 62
                        if (string_lower(arrName) == "adamsayz")
                            offset = 58
                        if (string_lower(arrName) == "rememberme?")
                            offset = 64
                        if (string_lower(arrName) == "d-388")
                            offset = 55
                        draw_set_font(global.fontGUI2)
                        draw_set_halign(fa_center)
                        draw_cool_text(arrX, (arrY - offset), text, c_black, c_white, c_white, 1)
                        draw_set_halign(fa_left)
                    }
                }
                else
                {
                    offset = 52
                    if (string_lower(arrName) == "meep")
                        offset = 54
                    if (string_lower(arrName) == "omegadruid")
                        offset = 62
                    if (string_lower(arrName) == "adamsayz")
                        offset = 58
                    if (string_lower(arrName) == "rememberme?")
                        offset = 64
                    if (string_lower(arrName) == "d-388")
                        offset = 55
                    draw_set_font(global.fontGUI2)
                    draw_set_halign(fa_center)
                    draw_cool_text(arrX, (arrY - offset), text, c_black, c_white, c_white, 1)
                    draw_set_halign(fa_left)
                }
            }
        }
    }
}
