var type_event, _buffer, bufferSize, bufferSizePacket, clientID, findsocket, i, arrList, f, v, ban, clientX, clientY, clientSprite, clientImage, clientA1, clientA1X, clientA1Y, clientA2, clientA2X, clientA2Y, clientA2A, clientMirror, clientArmmsl, clientRoom, clientName, clientBlend, clientFXTimer, clientRoomPrev, clientState, arr, indexValue, clientMapX, clientMapY, arrPosData, find, event, playerHealth, missiles, smissiles, pbombs, playerhealth, ping, item, metdead, size, type, alignment, result, _seed, monstersLeft, monstersArea, itemArr, metdeadArr, eventArr, tileCount, tileX, tileY, tileData, itemstaken, maxmissiles, maxsmissiles, maxpbombs, maxhealth, etanks, mtanks, stanks, ptanks, time, dir, sprX, sprY, charge, arrDraw, arrID, bombX, bombY, currentWeapon, missileX, missileY, pbombX, pbombY, syncDiff, str, syncELM, resend, receivedItem, etankCount, stankCount, ptankCount, mtankCount, receivedEvent, receivedMetdead, countArea, countLeft, part, j, receiveddmap;
disconnectTimer = 900
if (!global.acceptPacket)
    exit
type_event = ds_map_find_value(async_load, "type")
switch type_event
{
    case 3:
        _buffer = ds_map_find_value(async_load, "buffer")
        bufferSize = buffer_get_size(_buffer)
        buffer_seek(_buffer, buffer_seek_start, 0)
        bufferSizePacket = buffer_read(_buffer, buffer_s32)
        if (!is_real(bufferSizePacket))
            exit
        if ((bufferSizePacket + 4) != bufferSize)
            exit
        msgid = buffer_read(_buffer, buffer_u8)
        switch msgid
        {
            case 254:
                clientID = buffer_read(_buffer, buffer_u8)
                if (ds_list_size(roomList) > 0)
                {
                    findsocket = ds_list_find_index(roomList, clientID)
                    if (findsocket >= 0)
                        ds_list_delete(roomList, findsocket)
                }
                for (i = 0; i < ds_list_size(roomListData); i++)
                {
                    arrList = ds_list_find_value(roomListData, i)
                    if (arrList[0] == clientID)
                        ds_list_delete(roomListData, i)
                }
                for (f = 0; f < ds_list_size(global.idList); f++)
                {
                    arrList = ds_list_find_value(global.idList, f)
                    if (clientID == arrList[0, 0])
                        ds_list_delete(global.idList, f)
                }
                for (v = 0; v < ds_list_size(posData); v++)
                {
                    arrList = ds_list_find_value(posData, v)
                    if (clientID == arrList[0])
                        ds_list_delete(posData, v)
                }
                if instance_exists(oHatchling)
                {
                    with (oHatchling)
                    {
                        if (myid != 0)
                            instance_destroy()
                    }
                }
                break
            case 250:
                ban = buffer_read(_buffer, buffer_u8)
                if ban
                    banned = 1
                else
                    kicked = 1
                instance_destroy()
                break
            case 200:
                global.clientID = preferredcolor
                break
            case 100:
                clientID = buffer_read(_buffer, buffer_u8)
                clientX = buffer_read(_buffer, buffer_s16)
                clientY = buffer_read(_buffer, buffer_s16)
                clientSprite = buffer_read(_buffer, buffer_s16)
                clientImage = buffer_read(_buffer, buffer_s16)
                clientA1 = buffer_read(_buffer, buffer_s16)
                clientA1X = buffer_read(_buffer, buffer_s16)
                clientA1Y = buffer_read(_buffer, buffer_s16)
                clientA2 = buffer_read(_buffer, buffer_s16)
                clientA2X = buffer_read(_buffer, buffer_s16)
                clientA2Y = buffer_read(_buffer, buffer_s16)
                clientA2A = buffer_read(_buffer, buffer_s16)
                clientMirror = buffer_read(_buffer, buffer_s16)
                clientArmmsl = buffer_read(_buffer, buffer_s16)
                clientRoom = buffer_read(_buffer, buffer_s16)
                clientName = buffer_read(_buffer, buffer_string)
                clientBlend = buffer_read(_buffer, buffer_s16)
                clientFXTimer = buffer_read(_buffer, buffer_s8)
                clientRoomPrev = buffer_read(_buffer, buffer_s16)
                clientState = buffer_read(_buffer, buffer_u8)
                findsocket = ds_list_find_index(roomList, clientID)
                if (global.clientID != clientID)
                {
                    if (findsocket < 0)
                    {
                        if (clientRoom == room || clientRoom == 6 || clientRoom == 10 || clientRoom == 9 || clientRoom == 11 || clientRoom == 16)
                        {
                            ds_list_add(roomList, clientID)
                            arr[0] = clientID
                            arr[1] = clientX
                            arr[2] = clientY
                            arr[3] = clientSprite
                            arr[4] = clientImage
                            arr[5] = clientA1
                            arr[6] = clientA1X
                            arr[7] = clientA1Y
                            arr[8] = clientA2
                            arr[9] = clientA2X
                            arr[10] = clientA2Y
                            arr[11] = clientA2A
                            arr[12] = clientMirror
                            arr[13] = clientArmmsl
                            arr[14] = clientRoom
                            arr[15] = clientName
                            arr[16] = clientBlend
                            arr[17] = clientFXTimer
                            arr[18] = clientRoomPrev
                            arr[19] = clientState
                            ds_list_add(roomListData, arr)
                        }
                    }
                    else
                    {
                        arr[0] = clientID
                        arr[1] = clientX
                        arr[2] = clientY
                        arr[3] = clientSprite
                        arr[4] = clientImage
                        arr[5] = clientA1
                        arr[6] = clientA1X
                        arr[7] = clientA1Y
                        arr[8] = clientA2
                        arr[9] = clientA2X
                        arr[10] = clientA2Y
                        arr[11] = clientA2A
                        arr[12] = clientMirror
                        arr[13] = clientArmmsl
                        arr[14] = clientRoom
                        arr[15] = clientName
                        arr[16] = clientBlend
                        arr[17] = clientFXTimer
                        arr[18] = clientRoomPrev
                        arr[19] = clientState
                        indexValue = ds_list_find_value(roomList, findsocket)
                        for (i = 0; i < ds_list_size(roomListData); i++)
                        {
                            arrList = ds_list_find_value(roomListData, i)
                            if (arrList[0] == indexValue)
                                ds_list_set(roomListData, i, arr)
                        }
                        if (clientRoom != room && clientRoom != 6 && clientRoom != 10 && clientRoom != 9 && clientRoom != 11 && clientRoom != 16)
                        {
                            sameRoom = 0
                            indexValue = ds_list_find_value(roomList, findsocket)
                            ds_list_delete(roomList, findsocket)
                            for (i = 0; i < ds_list_size(roomListData); i++)
                            {
                                arrList = ds_list_find_value(roomListData, i)
                                if (arrList[0] == indexValue)
                                    ds_list_delete(roomListData, i)
                            }
                        }
                    }
                }
                break
            case 101:
                clientID = buffer_read(_buffer, buffer_u8)
                clientRoom = buffer_read(_buffer, buffer_s16)
                clientMapX = buffer_read(_buffer, buffer_s16)
                clientMapY = buffer_read(_buffer, buffer_s16)
                findsocket = ds_list_find_index(roomList, clientID)
                if (clientRoom == room && global.clientID != clientID)
                    sameRoom = 1
                else if (clientRoom != room && global.clientID != clientID && clientRoom != 6 && clientRoom != 10 && clientRoom != 9 && clientRoom != 11 && clientRoom != 16)
                {
                    if (ds_list_size(roomList) > 0 && findsocket >= 0)
                    {
                        sameRoom = 0
                        indexValue = ds_list_find_value(roomList, findsocket)
                        ds_list_delete(roomList, findsocket)
                        for (i = 0; i < ds_list_size(roomListData); i++)
                        {
                            arrList = ds_list_find_value(roomListData, i)
                            if (arrList[0] == clientID)
                                ds_list_delete(roomListData, i)
                        }
                    }
                }
                findsocket = ds_list_find_index(roomList, clientID)
                if (ds_list_size(roomList) > 0 && findsocket >= 0)
                {
                    for (i = 0; i < ds_list_size(roomListData); i++)
                    {
                        arrList = ds_list_find_value(roomListData, i)
                        if (arrList[0] == clientID)
                        {
                            arrList[14] = clientRoom
                            ds_list_set(roomListData, i, arrList)
                        }
                    }
                }
                checkList = ds_list_create()
                if (ds_list_size(global.idList) > 0)
                {
                    for (f = 0; f < ds_list_size(global.idList); f++)
                    {
                        if (ds_list_size(posData) > 0 && clientID != global.clientID)
                        {
                            arrPosData[0] = clientID
                            arrPosData[1] = clientMapX
                            arrPosData[2] = clientMapY
                            for (v = 0; v < ds_list_size(posData); v++)
                            {
                                arr = ds_list_find_value(posData, v)
                                ds_list_add(checkList, arr[0])
                                if (arr[0] == clientID)
                                    ds_list_set(posData, v, arrPosData)
                            }
                            find = ds_list_find_index(checkList, clientID)
                            if (find < 0)
                                ds_list_add(posData, arrPosData)
                        }
                        else if (ds_list_size(posData) == 0 && clientID != global.clientID)
                        {
                            arrPosData[0] = clientID
                            arrPosData[1] = clientMapX
                            arrPosData[2] = clientMapY
                            ds_list_add(posData, arrPosData)
                            if (instance_exists(oMapCursor) && surface_exists(oSS_Control.s_map))
                                surface_free(oSS_Control.s_map)
                        }
                    }
                }
                ds_list_destroy(checkList)
                if (clientRoom == 216 && room != rm_a4b01 && global.event[203] > 0 && global.event[203] < 9 && (!teleport) && string_lower(reactorsequence) == "synced")
                {
                    if (room == rm_a4b02 || room == rm_a4b03 || room == rm_a4b04 || room == rm_a4b05 || room == rm_a4b06 || room == rm_a4b07 || room == rm_a4b08 || room == rm_a4b09 || room == rm_a4b10 || room == rm_a4b11 || room == rm_a4b12 || room == rm_a4b13 || room == rm_a4b14 || room == rm_a4b15 || room == rm_a4b16 || room == rm_a4b17 || room == rm_a4b18 || room == rm_a4b19)
                    {
                        teleport = 1
                        global.targetx = 624
                        global.targety = 144
                        room_change(216, 1)
                    }
                }
                break
            case 102:
                ds_list_read(global.idList, strict_decompress(buffer_read(_buffer, buffer_string)))
                break
            case 104:
                playerHealth = buffer_read(_buffer, buffer_s16)
                missiles = buffer_read(_buffer, buffer_s16)
                smissiles = buffer_read(_buffer, buffer_u8)
                pbombs = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                global.playerhealth = playerHealth
                global.missiles = missiles
                global.smissiles = smissiles
                global.pbombs = pbombs
                break
            case 105:
                ping = buffer_read(_buffer, buffer_u32)
                global.ping = (current_time - ping)
                break
            case 106:
                load_character_vars()
                reset_dmap()
                global.itemPrev = array_clone(global.item)
                global.metdeadPrev = array_clone(global.metdead)
                global.eventPrev = array_clone(global.event)
                global.dmapPrev = array_clone(global.dmap)
                popup_text("Stats reset")
                break
            case 107:
                disconnectTimer = -10
                break
            case 0:
                global.clientID = buffer_read(_buffer, buffer_u8)
                show_debug_message(((string(msgid) + " ") + string(global.clientID)))
                alarm[0] = 5
                alarm[2] = 5
                alarm[3] = 5
                alarm[4] = 5
                alarm[5] = 5
                alarm[6] = 5
                alarm[7] = 5
                alarm[8] = 5
                alarm[9] = 5
                alarm[10] = 3
                alarm[11] = 20
                buffer_delete(buffer)
                size = 1024
                type = buffer_grow
                alignment = 1
                buffer = buffer_create(size, type, alignment)
                buffer_seek(buffer, buffer_seek_start, 0)
                buffer_write(buffer, buffer_u8, 200)
                buffer_write(buffer, buffer_u8, global.clientID)
                buffer_write(buffer, buffer_u8, preferredcolor)
                bufferSize = buffer_tell(buffer)
                buffer_seek(buffer, buffer_seek_start, 0)
                buffer_write(buffer, buffer_s32, bufferSize)
                buffer_write(buffer, buffer_u8, 200)
                buffer_write(buffer, buffer_u8, global.clientID)
                buffer_write(buffer, buffer_u8, preferredcolor)
                result = network_send_packet(socket, buffer, buffer_tell(buffer))
                break
            case 1:
                ds_grid_read(global.onlineReceived, strict_decompress(buffer_read(_buffer, buffer_string)))
                global.receivedClientID = buffer_read(_buffer, buffer_u8)
                global.receivedPacketID++
                if (global.receivedClientID != global.clientID)
                {
                    update_variables("disablesame")
                    update_variables("replaceglobalvars")
                    update_variables("updateprev")
                    alarm[0] = 10
                    ds_grid_clear(global.onlineReceived, -1)
                }
                break
            case 2:
                ds_grid_read(global.onlineReceived, strict_decompress(buffer_read(_buffer, buffer_string)))
                global.receivedClientID = buffer_read(_buffer, buffer_u8)
                update_variables("disablesame")
                update_variables("updateprev")
                alarm[0] = 10
                ds_grid_clear(global.onlineReceived, -1)
                break
            case 3:
                queenHealth = buffer_read(_buffer, buffer_s32)
                clientID = buffer_read(_buffer, buffer_u8)
                phase = buffer_read(_buffer, buffer_s8)
                state = buffer_read(_buffer, buffer_s8)
                if (clientID != global.clientID)
                {
                    if (instance_exists(oQueen) && instance_exists(oQueenHead) && (!is_undefined(oQueenHead.myhealth)) && (!is_undefined(oQueen.phase)))
                    {
                        if (oQueen.phase == phase)
                        {
                            if (global.queenhealthPrev != queenHealth)
                            {
                                if (queenHealth == 999999)
                                {
                                    queenHealth = 0
                                    oQueenHead.myhealth = queenHealth
                                    if (queenHealth <= 0)
                                    {
                                        with (oQueenHead)
                                        {
                                            if (myhealth <= 0 && state != 100 && state != 50)
                                            {
                                                if (oQueen.phase < 3)
                                                    head_damage = 1
                                                if (oQueen.phase == 3)
                                                    head_damage = 2
                                                if (oQueen.phase < 5)
                                                {
                                                    state = 50
                                                    statetime = 0
                                                    myhealth = 999999
                                                    with (oQueen)
                                                    {
                                                        state = 6
                                                        statetime = 0
                                                    }
                                                }
                                                if (oQueen.phase == 5)
                                                {
                                                    with (oQueen)
                                                    {
                                                        state = 100
                                                        statetime = 0
                                                    }
                                                    state = 100
                                                }
                                            }
                                        }
                                        queenHealth = 999999
                                    }
                                }
                                global.queenhealthPrev = queenHealth
                                oQueenHead.myhealth = queenHealth
                            }
                        }
                        if (global.queenphasePrev != phase)
                            global.queenphasePrev = phase
                    }
                }
                else if (instance_exists(oQueen) && instance_exists(oQueenHead) && (!is_undefined(oQueenHead.myhealth)) && (!is_undefined(oQueen.phase)))
                {
                    global.queenhealthPrev = oQueenHead.myhealth
                    global.queenphasePrev = oQueen.phase
                }
                break
            case 4:
                _seed = buffer_read(_buffer, buffer_f64)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID)
                {
                    if (seed != _seed)
                    {
                        seed = _seed
                        show_debug_message("seed received")
                        popup_seed("Seed received")
                    }
                }
                oControl.mod_bombs = buffer_read(_buffer, buffer_s16)
                oControl.mod_spider = buffer_read(_buffer, buffer_s16)
                oControl.mod_jumpball = buffer_read(_buffer, buffer_s16)
                oControl.mod_hijump = buffer_read(_buffer, buffer_s16)
                oControl.mod_varia = buffer_read(_buffer, buffer_s16)
                oControl.mod_spacejump = buffer_read(_buffer, buffer_s16)
                oControl.mod_speedbooster = buffer_read(_buffer, buffer_s16)
                oControl.mod_screwattack = buffer_read(_buffer, buffer_s16)
                oControl.mod_gravity = buffer_read(_buffer, buffer_s16)
                oControl.mod_charge = buffer_read(_buffer, buffer_s16)
                oControl.mod_ice = buffer_read(_buffer, buffer_s16)
                oControl.mod_wave = buffer_read(_buffer, buffer_s16)
                oControl.mod_spazer = buffer_read(_buffer, buffer_s16)
                oControl.mod_plasma = buffer_read(_buffer, buffer_s16)
                oControl.mod_52 = buffer_read(_buffer, buffer_s16)
                oControl.mod_53 = buffer_read(_buffer, buffer_s16)
                oControl.mod_54 = buffer_read(_buffer, buffer_s16)
                oControl.mod_55 = buffer_read(_buffer, buffer_s16)
                oControl.mod_56 = buffer_read(_buffer, buffer_s16)
                oControl.mod_57 = buffer_read(_buffer, buffer_s16)
                oControl.mod_60 = buffer_read(_buffer, buffer_s16)
                oControl.mod_100 = buffer_read(_buffer, buffer_s16)
                oControl.mod_101 = buffer_read(_buffer, buffer_s16)
                oControl.mod_102 = buffer_read(_buffer, buffer_s16)
                oControl.mod_104 = buffer_read(_buffer, buffer_s16)
                oControl.mod_105 = buffer_read(_buffer, buffer_s16)
                oControl.mod_106 = buffer_read(_buffer, buffer_s16)
                oControl.mod_107 = buffer_read(_buffer, buffer_s16)
                oControl.mod_109 = buffer_read(_buffer, buffer_s16)
                oControl.mod_111 = buffer_read(_buffer, buffer_s16)
                oControl.mod_150 = buffer_read(_buffer, buffer_s16)
                oControl.mod_151 = buffer_read(_buffer, buffer_s16)
                oControl.mod_152 = buffer_read(_buffer, buffer_s16)
                oControl.mod_153 = buffer_read(_buffer, buffer_s16)
                oControl.mod_154 = buffer_read(_buffer, buffer_s16)
                oControl.mod_155 = buffer_read(_buffer, buffer_s16)
                oControl.mod_156 = buffer_read(_buffer, buffer_s16)
                oControl.mod_159 = buffer_read(_buffer, buffer_s16)
                oControl.mod_161 = buffer_read(_buffer, buffer_s16)
                oControl.mod_163 = buffer_read(_buffer, buffer_s16)
                oControl.mod_202 = buffer_read(_buffer, buffer_s16)
                oControl.mod_203 = buffer_read(_buffer, buffer_s16)
                oControl.mod_204 = buffer_read(_buffer, buffer_s16)
                oControl.mod_205 = buffer_read(_buffer, buffer_s16)
                oControl.mod_208 = buffer_read(_buffer, buffer_s16)
                oControl.mod_210 = buffer_read(_buffer, buffer_s16)
                oControl.mod_211 = buffer_read(_buffer, buffer_s16)
                oControl.mod_214 = buffer_read(_buffer, buffer_s16)
                oControl.mod_250 = buffer_read(_buffer, buffer_s16)
                oControl.mod_252 = buffer_read(_buffer, buffer_s16)
                oControl.mod_255 = buffer_read(_buffer, buffer_s16)
                oControl.mod_257 = buffer_read(_buffer, buffer_s16)
                oControl.mod_259 = buffer_read(_buffer, buffer_s16)
                oControl.mod_303 = buffer_read(_buffer, buffer_s16)
                oControl.mod_304 = buffer_read(_buffer, buffer_s16)
                oControl.mod_307 = buffer_read(_buffer, buffer_s16)
                oControl.mod_308 = buffer_read(_buffer, buffer_s16)
                oControl.mod_309 = buffer_read(_buffer, buffer_s16)
                oControl.mod_51 = buffer_read(_buffer, buffer_s16)
                oControl.mod_110 = buffer_read(_buffer, buffer_s16)
                oControl.mod_162 = buffer_read(_buffer, buffer_s16)
                oControl.mod_206 = buffer_read(_buffer, buffer_s16)
                oControl.mod_207 = buffer_read(_buffer, buffer_s16)
                oControl.mod_209 = buffer_read(_buffer, buffer_s16)
                oControl.mod_215 = buffer_read(_buffer, buffer_s16)
                oControl.mod_256 = buffer_read(_buffer, buffer_s16)
                oControl.mod_300 = buffer_read(_buffer, buffer_s16)
                oControl.mod_305 = buffer_read(_buffer, buffer_s16)
                oControl.mod_50 = buffer_read(_buffer, buffer_s16)
                oControl.mod_103 = buffer_read(_buffer, buffer_s16)
                oControl.mod_108 = buffer_read(_buffer, buffer_s16)
                oControl.mod_157 = buffer_read(_buffer, buffer_s16)
                oControl.mod_158 = buffer_read(_buffer, buffer_s16)
                oControl.mod_200 = buffer_read(_buffer, buffer_s16)
                oControl.mod_201 = buffer_read(_buffer, buffer_s16)
                oControl.mod_251 = buffer_read(_buffer, buffer_s16)
                oControl.mod_254 = buffer_read(_buffer, buffer_s16)
                oControl.mod_306 = buffer_read(_buffer, buffer_s16)
                oControl.mod_58 = buffer_read(_buffer, buffer_s16)
                oControl.mod_59 = buffer_read(_buffer, buffer_s16)
                oControl.mod_112 = buffer_read(_buffer, buffer_s16)
                oControl.mod_160 = buffer_read(_buffer, buffer_s16)
                oControl.mod_212 = buffer_read(_buffer, buffer_s16)
                oControl.mod_213 = buffer_read(_buffer, buffer_s16)
                oControl.mod_253 = buffer_read(_buffer, buffer_s16)
                oControl.mod_258 = buffer_read(_buffer, buffer_s16)
                oControl.mod_301 = buffer_read(_buffer, buffer_s16)
                oControl.mod_302 = buffer_read(_buffer, buffer_s16)
                break
            case 5:
                monstersLeft = buffer_read(_buffer, buffer_s8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (global.clientID != clientID && global.monstersleft != monstersLeft)
                {
                    global.monstersleft = monstersLeft
                    global.monstersleftPrev = global.monstersleft
                }
                else if (global.clientID == clientID)
                    global.monstersleftPrev = global.monstersleft
                alarm[2] = 10
                break
            case 6:
                monstersArea = buffer_read(_buffer, buffer_s8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (global.clientID != clientID && global.monstersarea != monstersArea)
                {
                    global.monstersarea = monstersArea
                    global.monstersareaPrev = global.monstersarea
                }
                else if (global.clientID == clientID)
                    global.monstersareaPrev = global.monstersarea
                alarm[2] = 10
                break
            case 7:
                item = ds_list_create()
                ds_list_read(item, strict_decompress(buffer_read(_buffer, buffer_string)))
                clientID = buffer_read(_buffer, buffer_u8)
                itemArr = ds_list_find_value(item, 0)
                if is_array(itemArr)
                {
                    for (i = 0; i < array_length_1d(global.item); i++)
                    {
                        for (f = 0; f < array_height_2d(itemArr); f++)
                        {
                            if (i == itemArr[f, 1])
                            {
                                global.itemPrev[i] = itemArr[f, 0]
                                if (global.item[i] != itemArr[f, 0])
                                {
                                    global.item[i] = itemArr[f, 0]
                                    if (i == 0)
                                    {
                                        global.bomb = 1
                                        global.bombPrev = global.bomb
                                        popup_text(((get_text("Items", "Bombs") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 1)
                                    {
                                        global.powergrip = 1
                                        global.powergripPrev = global.powergrip
                                        popup_text(((get_text("Items", "PowerGrip") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 2)
                                    {
                                        global.spiderball = 1
                                        global.spiderballPrev = global.spiderball
                                        popup_text(((get_text("Items", "SpiderBall") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 3)
                                    {
                                        global.jumpball = 1
                                        global.jumpballPrev = global.jumpball
                                        popup_text(((get_text("Items", "JumpBall") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 4)
                                    {
                                        global.hijump = 1
                                        global.hijumpPrev = global.hijump
                                        popup_text(((get_text("Items", "HiJump") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 5)
                                    {
                                        global.currentsuit = 1
                                        global.currentsuitPrev = global.currentsuit
                                        popup_text(((get_text("Items", "VariaSuit") + " ") + get_text("GlobalOptions", "Enabled")))
                                        if sfx_isplaying(sndSpinJump)
                                            sfx_stop(sndSpinJump)
                                        if sfx_isplaying(sndSpaceJump)
                                            sfx_stop(sndSpaceJump)
                                        if sfx_isplaying(sndScrewAttack)
                                            sfx_stop(sndScrewAttack)
                                        if sfx_isplaying(sndSpaceScrewAttack)
                                            sfx_stop(sndSpaceScrewAttack)
                                    }
                                    if (i == 6)
                                    {
                                        global.spacejump = 1
                                        global.spacejumpPrev = global.spacejump
                                        popup_text(((get_text("Items", "SpaceJump") + " ") + get_text("GlobalOptions", "Enabled")))
                                        if sfx_isplaying(sndSpinJump)
                                            sfx_stop(sndSpinJump)
                                        if sfx_isplaying(sndSpaceJump)
                                            sfx_stop(sndSpaceJump)
                                        if sfx_isplaying(sndScrewAttack)
                                            sfx_stop(sndScrewAttack)
                                        if sfx_isplaying(sndSpaceScrewAttack)
                                            sfx_stop(sndSpaceScrewAttack)
                                    }
                                    if (i == 7)
                                    {
                                        global.speedbooster = 1
                                        global.speedboosterPrev = global.speedbooster
                                        popup_text(((get_text("Items", "SpeedBooster") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 8)
                                    {
                                        global.screwattack = 1
                                        global.screwattackPrev = global.screwattack
                                        popup_text(((get_text("Items", "ScrewAttack") + " ") + get_text("GlobalOptions", "Enabled")))
                                        if sfx_isplaying(sndSpinJump)
                                            sfx_stop(sndSpinJump)
                                        if sfx_isplaying(sndSpaceJump)
                                            sfx_stop(sndSpaceJump)
                                        if sfx_isplaying(sndScrewAttack)
                                            sfx_stop(sndScrewAttack)
                                        if sfx_isplaying(sndSpaceScrewAttack)
                                            sfx_stop(sndSpaceScrewAttack)
                                    }
                                    if (i == 9)
                                    {
                                        global.currentsuit = 2
                                        global.currentsuitPrev = global.currentsuit
                                        popup_text(((get_text("Items", "GravitySuit") + " ") + get_text("GlobalOptions", "Enabled")))
                                        if sfx_isplaying(sndSpinJump)
                                            sfx_stop(sndSpinJump)
                                        if sfx_isplaying(sndSpaceJump)
                                            sfx_stop(sndSpaceJump)
                                        if sfx_isplaying(sndScrewAttack)
                                            sfx_stop(sndScrewAttack)
                                        if sfx_isplaying(sndSpaceScrewAttack)
                                            sfx_stop(sndSpaceScrewAttack)
                                    }
                                    if (i == 10)
                                    {
                                        global.cbeam = 1
                                        global.cbeamPrev = global.cbeam
                                        popup_text(((get_text("Items", "ChargeBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 11)
                                    {
                                        global.ibeam = 1
                                        global.ibeamPrev = global.ibeam
                                        popup_text(((get_text("Items", "IceBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 12)
                                    {
                                        global.wbeam = 1
                                        global.wbeamPrev = global.wbeam
                                        popup_text(((get_text("Items", "WaveBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 13)
                                    {
                                        global.sbeam = 1
                                        global.sbeamPrev = global.sbeam
                                        popup_text(((get_text("Items", "SpazerBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                    if (i == 14)
                                    {
                                        global.pbeam = 1
                                        global.pbeamPrev = global.pbeam
                                        popup_text(((get_text("Items", "PlasmaBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                                    }
                                }
                            }
                        }
                    }
                }
                alarm[3] = 10
                if (global.clientID == clientID)
                {
                    ds_list_clear(global.onlineItem)
                    global.itemChanges = 0
                }
                ds_list_destroy(item)
                break
            case 8:
                metdead = ds_list_create()
                ds_list_read(metdead, strict_decompress(buffer_read(_buffer, buffer_string)))
                clientID = buffer_read(_buffer, buffer_u8)
                metdeadArr = ds_list_find_value(metdead, 0)
                if is_array(metdeadArr)
                {
                    for (i = 0; i < array_length_1d(global.metdead); i++)
                    {
                        for (f = 0; f < array_height_2d(metdeadArr); f++)
                        {
                            if (i == metdeadArr[f, 1])
                            {
                                global.metdeadPrev[i] = metdeadArr[f, 0]
                                if (global.metdead[i] != metdeadArr[f, 0])
                                {
                                    global.metdead[i] = metdeadArr[f, 0]
                                    if (metdeadArr[f, 0] == 1 && global.clientID != clientID)
                                        popup_text("Syphonzoa killed")
                                }
                            }
                        }
                    }
                }
                alarm[4] = 10
                if (global.clientID == clientID)
                {
                    ds_list_clear(global.onlineMetdead)
                    global.metdeadChanges = 0
                }
                ds_list_destroy(metdead)
                break
            case 9:
                event = ds_list_create()
                ds_list_read(event, strict_decompress(buffer_read(_buffer, buffer_string)))
                clientID = buffer_read(_buffer, buffer_u8)
                eventArr = ds_list_find_value(event, 0)
                if is_array(eventArr)
                {
                    for (i = 0; i < array_length_1d(global.event); i++)
                    {
                        for (f = 0; f < array_height_2d(eventArr); f++)
                        {
                            if (i == eventArr[f, 1] && eventArr[f, 1] != 102)
                            {
                                global.eventPrev[i] = eventArr[f, 0]
                                if (global.event[i] != eventArr[f, 0])
                                    global.event[i] = eventArr[f, 0]
                                if (eventArr[f, 1] == 308)
                                {
                                    if (eventArr[f, 0] == 1 && clientID != global.clientID)
                                    {
                                        if instance_exists(oCharacter)
                                        {
                                            with (oCharacter)
                                            {
                                                facing = 0
                                                if (global.currentsuit == 0)
                                                    sprite_index = scr_suit_sprites(822, sFront_fusion)
                                                if (global.currentsuit == 1)
                                                    sprite_index = scr_suit_sprites(1029, sFront_fusion)
                                                if (global.currentsuit == 2)
                                                    sprite_index = scr_suit_sprites(848, sFront_fusion)
                                                canbehit = 0
                                                xVel = 0
                                                yVel = 0
                                                xAcc = 0
                                                yAcc = 0
                                            }
                                        }
                                        global.enablecontrol = 0
                                        oControl.displaygui = 0
                                        popup_text_ext("GG no re", 120)
                                    }
                                    if (eventArr[f, 0] == 2 && clientID != global.clientID)
                                    {
                                        oControl.displaygui = 0
                                        global.enablecontrol = 0
                                        if instance_exists(oCharacter)
                                        {
                                            with (oCharacter)
                                            {
                                                xVel = 0
                                                yVel = 0
                                                xAcc = 0
                                                yAcc = 0
                                            }
                                        }
                                    }
                                    if (eventArr[f, 0] == 3 && clientID != global.clientID)
                                    {
                                        instance_create(0, 0, oFinalFadeout)
                                        mus_fadeout(musHatchling)
                                        global.enablecontrol = 0
                                        if instance_exists(oCharacter)
                                        {
                                            with (oCharacter)
                                            {
                                                xVel = 0
                                                yVel = 0
                                                xAcc = 0
                                                yAcc = 0
                                            }
                                        }
                                    }
                                    if (eventArr[f, 0] == 4 && clientID != global.clientID)
                                    {
                                        if instance_exists(oCharacter)
                                        {
                                            with (oCharacter)
                                            {
                                                xVel = 0
                                                yVel = 0
                                                xAcc = 0
                                                yAcc = 0
                                                canbehit = 1
                                            }
                                        }
                                        remove_persistent_objects()
                                        sfx_stop_all()
                                        global.vibL = 0
                                        global.vibR = 0
                                        global.ingame = 0
                                        global.darkness = 0
                                        global.gotolog = -1
                                        global.enablecontrol = 1
                                        global.transitiontype = 0
                                        oControl.displaygui = 1
                                        room_goto(rm_credits)
                                        mus_stop_all()
                                        mus_play_once(musCredits)
                                    }
                                }
                            }
                        }
                    }
                }
                alarm[5] = 10
                if (global.clientID == clientID)
                {
                    ds_list_clear(global.onlineEvent)
                    global.eventChanges = 0
                }
                ds_list_destroy(event)
                break
            case 10:
                tileCount = buffer_read(_buffer, buffer_u16)
                if (tileCount > 0)
                {
                    for (i = 0; i < tileCount; i++)
                    {
                        tileX = buffer_read(_buffer, buffer_u8)
                        tileY = buffer_read(_buffer, buffer_u8)
                        tileData = buffer_read(_buffer, buffer_u8)
                        global.dmapPrev[tileX, tileY] = tileData
                        if (global.dmap[tileX, tileY] != tileData)
                        {
                            global.dmap[tileX, tileY] = tileData
                            if global.ingame
                            {
                                with (oControl)
                                    event_user(2)
                            }
                            if (instance_exists(oMapCursor) && surface_exists(oSS_Control.s_map))
                                surface_free(oSS_Control.s_map)
                        }
                    }
                    clientID = buffer_read(_buffer, buffer_u8)
                }
                alarm[6] = 10
                break
            case 11:
                itemstaken = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && itemstaken != global.itemstaken)
                {
                    global.itemstakenPrev = itemstaken
                    global.itemstaken = itemstaken
                }
                else if (clientID == global.clientID)
                    global.itemstakenPrev = global.itemstaken
                alarm[7] = 1
                break
            case 12:
                maxmissiles = buffer_read(_buffer, buffer_u16)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && maxmissiles != global.maxmissiles)
                {
                    global.maxmissilesPrev = maxmissiles
                    global.maxmissiles = maxmissiles
                }
                else if (clientID == global.clientID)
                    global.maxmissilesPrev = global.maxmissiles
                global.missilesPrev = maxmissiles
                global.missiles = maxmissiles
                alarm[8] = 1
                break
            case 13:
                maxsmissiles = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && maxsmissiles != global.maxsmissiles)
                {
                    global.maxsmissilesPrev = maxsmissiles
                    global.maxsmissiles = maxsmissiles
                }
                else if (clientID == global.clientID)
                    global.maxsmissilesPrev = global.maxsmissiles
                global.smissilesPrev = maxsmissiles
                global.smissiles = maxsmissiles
                alarm[9] = 1
                break
            case 14:
                maxpbombs = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && maxpbombs != global.maxpbombs)
                {
                    global.maxpbombsPrev = maxpbombs
                    global.maxpbombs = maxpbombs
                }
                else if (clientID == global.clientID)
                    global.maxpbombsPrev = global.maxpbombs
                global.pbombsPrev = maxpbombs
                global.pbombs = maxpbombs
                maxpbombsTimer = 1
                break
            case 15:
                maxhealth = buffer_read(_buffer, buffer_u16)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && maxhealth != global.maxhealth)
                {
                    global.maxhealthPrev = maxhealth
                    global.maxhealth = maxhealth
                }
                else if (clientID == global.clientID)
                    global.maxhealthPrev = global.maxhealth
                global.playerhealthPrev = maxhealth
                global.playerhealth = maxhealth
                maxhealthTimer = 1
                break
            case 16:
                etanks = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && etanks != global.etanks)
                {
                    global.etanksPrev = etanks
                    global.etanks = etanks
                }
                else if (clientID == global.clientID)
                    global.etanksPrev = global.etanks
                etanksTimer = 1
                break
            case 17:
                mtanks = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && mtanks != global.mtanks)
                {
                    global.mtanksPrev = mtanks
                    global.mtanks = mtanks
                }
                else if (clientID == global.clientID)
                    global.mtanksPrev = global.mtanks
                mtanksTimer = 1
                break
            case 18:
                stanks = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && stanks != global.stanks)
                {
                    global.stanksPrev = stanks
                    global.stanks = stanks
                }
                else if (clientID == global.clientID)
                    global.stanksPrev = global.stanks
                stanksTimer = 1
                break
            case 19:
                ptanks = buffer_read(_buffer, buffer_u8)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && ptanks != global.ptanks)
                {
                    global.ptanksPrev = ptanks
                    global.ptanks = ptanks
                }
                else if (clientID == global.clientID)
                    global.ptanksPrev = global.ptanks
                ptanksTimer = 1
                break
            case 20:
                time = buffer_read(_buffer, buffer_s32)
                global.gametime = time
                break
            case 21:
                clientID = buffer_read(_buffer, buffer_u8)
                dir = buffer_read(_buffer, buffer_s16)
                sprX = buffer_read(_buffer, buffer_s16)
                sprY = buffer_read(_buffer, buffer_s16)
                charge = buffer_read(_buffer, buffer_u8)
                if (ds_list_size(roomListData) > 0 && clientID != global.clientID)
                {
                    for (i = 0; i < ds_list_size(roomListData); i++)
                    {
                        arrDraw = ds_list_find_value(roomListData, i)
                        arrID = arrDraw[0]
                        if (clientID == arrID)
                        {
                            if instance_exists(oCharacter)
                            {
                                with (oCharacter)
                                    shoot_beam_receive(sprX, sprY, dir, charge)
                            }
                        }
                    }
                }
                break
            case 22:
                clientID = buffer_read(_buffer, buffer_u8)
                bombX = buffer_read(_buffer, buffer_s16)
                bombY = buffer_read(_buffer, buffer_s16)
                if (ds_list_size(roomListData) > 0 && clientID != global.clientID)
                {
                    for (i = 0; i < ds_list_size(roomListData); i++)
                    {
                        arrDraw = ds_list_find_value(roomListData, i)
                        arrID = arrDraw[0]
                        if (clientID == arrID)
                        {
                            if instance_exists(oCharacter)
                            {
                                instance_create(bombX, bombY, oBombMulti)
                                sfx_play(sndBombSet)
                            }
                        }
                    }
                }
                break
            case 23:
                clientID = buffer_read(_buffer, buffer_u8)
                currentWeapon = buffer_read(_buffer, buffer_u8)
                dir = buffer_read(_buffer, buffer_s16)
                missileX = buffer_read(_buffer, buffer_s16)
                missileY = buffer_read(_buffer, buffer_s16)
                if (ds_list_size(roomListData) > 0 && clientID != global.clientID)
                {
                    for (i = 0; i < ds_list_size(roomListData); i++)
                    {
                        arrDraw = ds_list_find_value(roomListData, i)
                        arrID = arrDraw[0]
                        if (clientID == arrID)
                        {
                            if instance_exists(oCharacter)
                            {
                                with (oCharacter)
                                {
                                    shoot_missile_receive(dir, currentWeapon, missileX, missileY)
                                    show_debug_message(((("x = " + string(missileX)) + " y = ") + string(missileY)))
                                }
                            }
                        }
                    }
                }
                break
            case 24:
                clientID = buffer_read(_buffer, buffer_u8)
                pbombX = buffer_read(_buffer, buffer_s16)
                pbombY = buffer_read(_buffer, buffer_s16)
                if (ds_list_size(roomListData) > 0 && clientID != global.clientID)
                {
                    for (i = 0; i < ds_list_size(roomListData); i++)
                    {
                        arrDraw = ds_list_find_value(roomListData, i)
                        arrID = arrDraw[0]
                        if (clientID == arrID)
                        {
                            if instance_exists(oCharacter)
                                instance_create(pbombX, pbombY, oPBombMulti)
                        }
                    }
                }
                break
            case 25:
                playerhealth = buffer_read(_buffer, buffer_s16)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && playerhealth != global.playerhealth)
                {
                    if instance_exists(oCharacter)
                    {
                        if (oCharacter.state != oCharacter.SAVINGFX && oCharacter.state != oCharacter.SAVINGSHIPFX && oCharacter.state != oCharacter.SAVINGSHIP && oCharacter.state != oCharacter.SAVING)
                        {
                            global.playerhealthPrev = playerhealth
                            global.playerhealth = playerhealth
                        }
                        else if (oCharacter.state == oCharacter.SAVINGFX || oCharacter.state == oCharacter.SAVINGSHIPFX || oCharacter.state == oCharacter.SAVINGSHIP || oCharacter.state == oCharacter.SAVING || (oCharacter.state == oCharacter.IDLE && oCharacter.juststarted > 0))
                        {
                            if (global.playerhealth != global.maxhealth)
                                refill_heath_ammo()
                            if (global.missiles != global.maxmissiles)
                                refill_heath_ammo()
                            if (global.smissiles != global.maxsmissiles)
                                refill_heath_ammo()
                            if (global.pbombs != global.maxpbombs)
                                refill_heath_ammo()
                            buffer_delete(buffer)
                            size = 1024
                            type = buffer_grow
                            alignment = 1
                            buffer = buffer_create(size, type, alignment)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            bufferSize = buffer_tell(buffer)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_s32, bufferSize)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            result = network_send_packet(socket, buffer, buffer_tell(buffer))
                        }
                    }
                    else
                    {
                        global.playerhealthPrev = playerhealth
                        global.playerhealth = playerhealth
                    }
                }
                else if (clientID == global.clientID)
                    global.playerhealthPrev = global.playerhealth
                healthTimer = 1
                break
            case 26:
                missiles = buffer_read(_buffer, buffer_s16)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && missiles != global.missiles)
                {
                    if instance_exists(oCharacter)
                    {
                        if (oCharacter.state != oCharacter.SAVINGFX && oCharacter.state != oCharacter.SAVINGSHIPFX && oCharacter.state != oCharacter.SAVINGSHIP && oCharacter.state != oCharacter.SAVING)
                        {
                            global.missilesPrev = missiles
                            global.missiles = missiles
                        }
                        else if (oCharacter.state == oCharacter.SAVINGFX || oCharacter.state == oCharacter.SAVINGSHIPFX || oCharacter.state == oCharacter.SAVINGSHIP || oCharacter.state == oCharacter.SAVING || (oCharacter.state == oCharacter.IDLE && oCharacter.juststarted > 0))
                        {
                            if (global.playerhealth != global.maxhealth)
                                refill_heath_ammo()
                            if (global.missiles != global.maxmissiles)
                                refill_heath_ammo()
                            if (global.smissiles != global.maxsmissiles)
                                refill_heath_ammo()
                            if (global.pbombs != global.maxpbombs)
                                refill_heath_ammo()
                            buffer_delete(buffer)
                            size = 1024
                            type = buffer_grow
                            alignment = 1
                            buffer = buffer_create(size, type, alignment)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            bufferSize = buffer_tell(buffer)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_s32, bufferSize)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            result = network_send_packet(socket, buffer, buffer_tell(buffer))
                        }
                    }
                    else
                    {
                        global.missilesPrev = missiles
                        global.missiles = missiles
                    }
                }
                else if (clientID == global.clientID)
                    global.missilesPrev = global.missiles
                missilesTimer = 1
                break
            case 27:
                smissiles = buffer_read(_buffer, buffer_s16)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && smissiles != global.smissiles)
                {
                    if instance_exists(oCharacter)
                    {
                        if (oCharacter.state != oCharacter.SAVINGFX && oCharacter.state != oCharacter.SAVINGSHIPFX && oCharacter.state != oCharacter.SAVINGSHIP && oCharacter.state != oCharacter.SAVING)
                        {
                            global.smissilesPrev = smissiles
                            global.smissiles = smissiles
                        }
                        else if (oCharacter.state == oCharacter.SAVINGFX || oCharacter.state == oCharacter.SAVINGSHIPFX || oCharacter.state == oCharacter.SAVINGSHIP || oCharacter.state == oCharacter.SAVING || (oCharacter.state == oCharacter.IDLE && oCharacter.juststarted > 0))
                        {
                            if (global.playerhealth != global.maxhealth)
                                refill_heath_ammo()
                            if (global.missiles != global.maxmissiles)
                                refill_heath_ammo()
                            if (global.smissiles != global.maxsmissiles)
                                refill_heath_ammo()
                            if (global.pbombs != global.maxpbombs)
                                refill_heath_ammo()
                            buffer_delete(buffer)
                            size = 1024
                            type = buffer_grow
                            alignment = 1
                            buffer = buffer_create(size, type, alignment)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            bufferSize = buffer_tell(buffer)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_s32, bufferSize)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            result = network_send_packet(socket, buffer, buffer_tell(buffer))
                        }
                    }
                    else
                    {
                        global.smissilesPrev = smissiles
                        global.smissiles = smissiles
                    }
                }
                else if (clientID == global.clientID)
                    global.smissilesPrev = global.smissiles
                smissilesTimer = 1
                break
            case 28:
                pbombs = buffer_read(_buffer, buffer_s16)
                clientID = buffer_read(_buffer, buffer_u8)
                if (clientID != global.clientID && pbombs != global.pbombs)
                {
                    if instance_exists(oCharacter)
                    {
                        if (oCharacter.state != oCharacter.SAVINGFX && oCharacter.state != oCharacter.SAVINGSHIPFX && oCharacter.state != oCharacter.SAVINGSHIP && oCharacter.state != oCharacter.SAVING)
                        {
                            global.pbombsPrev = pbombs
                            global.pbombs = pbombs
                        }
                        else if (oCharacter.state == oCharacter.SAVINGFX || oCharacter.state == oCharacter.SAVINGSHIPFX || oCharacter.state == oCharacter.SAVINGSHIP || oCharacter.state == oCharacter.SAVING || (oCharacter.state == oCharacter.IDLE && oCharacter.juststarted > 0))
                        {
                            if (global.playerhealth != global.maxhealth)
                                refill_heath_ammo()
                            if (global.missiles != global.maxmissiles)
                                refill_heath_ammo()
                            if (global.smissiles != global.maxsmissiles)
                                refill_heath_ammo()
                            if (global.pbombs != global.maxpbombs)
                                refill_heath_ammo()
                            buffer_delete(buffer)
                            size = 1024
                            type = buffer_grow
                            alignment = 1
                            buffer = buffer_create(size, type, alignment)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            bufferSize = buffer_tell(buffer)
                            buffer_seek(buffer, buffer_seek_start, 0)
                            buffer_write(buffer, buffer_s32, bufferSize)
                            buffer_write(buffer, buffer_u8, 102)
                            buffer_write(buffer, buffer_s16, global.playerhealth)
                            buffer_write(buffer, buffer_s16, global.missiles)
                            buffer_write(buffer, buffer_u8, global.smissiles)
                            buffer_write(buffer, buffer_u8, global.pbombs)
                            buffer_write(buffer, buffer_u8, global.clientID)
                            result = network_send_packet(socket, buffer, buffer_tell(buffer))
                        }
                    }
                    else
                    {
                        global.pbombsPrev = pbombs
                        global.pbombs = pbombs
                    }
                }
                else if (clientID == global.clientID)
                    global.pbombsPrev = global.pbombs
                pbombsTimer = 1
                break
            case 29:
                syncDiff = buffer_read(_buffer, buffer_u8)
                if (syncDiff != syncedDifficulty)
                {
                    syncedDifficulty = syncDiff
                    switch syncedDifficulty
                    {
                        case 0:
                            str = "Easy"
                            break
                        case 1:
                            str = "Normal"
                            break
                        case 2:
                            str = "Hard"
                            break
                        case 3:
                            str = "Fusion"
                            break
                    }

                    popup_text(str)
                }
                if (instance_exists(oOptionsMod) && oOptionsMod.menuDifficulty != syncedDifficulty)
                    oOptionsMod.menuDifficulty = syncedDifficulty
                break
            case 30:
                syncELM = buffer_read(_buffer, buffer_u8)
                if (syncELM != elm)
                {
                    elm = syncELM
                    switch elm
                    {
                        case 0:
                            str = "ELM Disabled"
                            break
                        case 1:
                            str = "ELM Enabled"
                            break
                    }

                    popup_text(str)
                }
                if (instance_exists(oOptionsMod) && oOptionsMod.elm != elm)
                    oOptionsMod.elm = elm
                break
            case 50:
                resend = 0
                for (i = 0; i < array_length_1d(global.item); i++)
                {
                    receivedItem = buffer_read(_buffer, buffer_u8)
                    if (receivedItem == 1 && global.item[i] == 0)
                    {
                        global.item[i] = receivedItem
                        global.itemPrev[i] = global.item[i]
                        if (i == 0)
                        {
                            global.bomb = 1
                            global.bombPrev = global.bomb
                            popup_text(((get_text("Items", "Bombs") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 1)
                        {
                            global.powergrip = 1
                            global.powergripPrev = global.powergrip
                            popup_text(((get_text("Items", "PowerGrip") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 2)
                        {
                            global.spiderball = 1
                            global.spiderballPrev = global.spiderball
                            popup_text(((get_text("Items", "SpiderBall") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 3)
                        {
                            global.jumpball = 1
                            global.jumpballPrev = global.jumpball
                            popup_text(((get_text("Items", "JumpBall") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 4)
                        {
                            global.hijump = 1
                            global.hijumpPrev = global.hijump
                            popup_text(((get_text("Items", "HiJump") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 5)
                        {
                            global.currentsuit = 1
                            global.currentsuitPrev = global.currentsuit
                            popup_text(((get_text("Items", "VariaSuit") + " ") + get_text("GlobalOptions", "Enabled")))
                            if sfx_isplaying(sndSpinJump)
                                sfx_stop(sndSpinJump)
                            if sfx_isplaying(sndSpaceJump)
                                sfx_stop(sndSpaceJump)
                            if sfx_isplaying(sndScrewAttack)
                                sfx_stop(sndScrewAttack)
                            if sfx_isplaying(sndSpaceScrewAttack)
                                sfx_stop(sndSpaceScrewAttack)
                        }
                        if (i == 6)
                        {
                            global.spacejump = 1
                            global.spacejumpPrev = global.spacejump
                            popup_text(((get_text("Items", "SpaceJump") + " ") + get_text("GlobalOptions", "Enabled")))
                            if sfx_isplaying(sndSpinJump)
                                sfx_stop(sndSpinJump)
                            if sfx_isplaying(sndSpaceJump)
                                sfx_stop(sndSpaceJump)
                            if sfx_isplaying(sndScrewAttack)
                                sfx_stop(sndScrewAttack)
                            if sfx_isplaying(sndSpaceScrewAttack)
                                sfx_stop(sndSpaceScrewAttack)
                        }
                        if (i == 7)
                        {
                            global.speedbooster = 1
                            global.speedboosterPrev = global.speedbooster
                            popup_text(((get_text("Items", "SpeedBooster") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 8)
                        {
                            global.screwattack = 1
                            global.screwattackPrev = global.screwattack
                            popup_text(((get_text("Items", "ScrewAttack") + " ") + get_text("GlobalOptions", "Enabled")))
                            if sfx_isplaying(sndSpinJump)
                                sfx_stop(sndSpinJump)
                            if sfx_isplaying(sndSpaceJump)
                                sfx_stop(sndSpaceJump)
                            if sfx_isplaying(sndScrewAttack)
                                sfx_stop(sndScrewAttack)
                            if sfx_isplaying(sndSpaceScrewAttack)
                                sfx_stop(sndSpaceScrewAttack)
                        }
                        if (i == 9)
                        {
                            global.currentsuit = 2
                            global.currentsuitPrev = global.currentsuit
                            popup_text(((get_text("Items", "GravitySuit") + " ") + get_text("GlobalOptions", "Enabled")))
                            if sfx_isplaying(sndSpinJump)
                                sfx_stop(sndSpinJump)
                            if sfx_isplaying(sndSpaceJump)
                                sfx_stop(sndSpaceJump)
                            if sfx_isplaying(sndScrewAttack)
                                sfx_stop(sndScrewAttack)
                            if sfx_isplaying(sndSpaceScrewAttack)
                                sfx_stop(sndSpaceScrewAttack)
                        }
                        if (i == 10)
                        {
                            global.cbeam = 1
                            global.cbeamPrev = global.cbeam
                            popup_text(((get_text("Items", "ChargeBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 11)
                        {
                            global.ibeam = 1
                            global.ibeamPrev = global.ibeam
                            popup_text(((get_text("Items", "IceBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 12)
                        {
                            global.wbeam = 1
                            global.wbeamPrev = global.wbeam
                            popup_text(((get_text("Items", "WaveBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 13)
                        {
                            global.sbeam = 1
                            global.sbeamPrev = global.sbeam
                            popup_text(((get_text("Items", "SpazerBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                        if (i == 14)
                        {
                            global.pbeam = 1
                            global.pbeamPrev = global.pbeam
                            popup_text(((get_text("Items", "PlasmaBeam") + " ") + get_text("GlobalOptions", "Enabled")))
                        }
                    }
                    else if (receivedItem == 0 && global.item[i] == 1)
                        resend = 1
                }
                etankCount = 0
                for (i = 0; i < array_length_1d(global.item); i++)
                {
                    if (i == 50 || i == 103 || i == 108 || i == 157 || i == 158 || i == 200 || i == 201 || i == 251 || i == 254 || i == 306)
                    {
                        if (global.item[i] == 1)
                            etankCount++
                    }
                }
                if (etankCount != global.etanks)
                {
                    global.etanks = etankCount
                    global.maxhealth = ((99 + (100 * global.etanks)) * oControl.mod_etankhealthmult)
                    global.playerhealth = global.maxhealth
                }
                stankCount = 0
                for (i = 0; i < array_length_1d(global.item); i++)
                {
                    if (i == 51 || i == 110 || i == 162 || i == 206 || i == 207 || i == 209 || i == 215 || i == 256 || i == 300 || i == 305)
                    {
                        if (global.item[i] == 1)
                            stankCount++
                    }
                }
                if (stankCount != global.stanks)
                {
                    global.stanks = stankCount
                    if (global.difficulty < 2)
                        global.maxsmissiles = (2 * global.stanks)
                    if (global.difficulty == 2)
                        global.maxsmissiles = (1 * global.stanks)
                    global.smissiles = global.maxsmissiles
                }
                ptankCount = 0
                for (i = 0; i < array_length_1d(global.item); i++)
                {
                    if (i == 58 || i == 59 || i == 112 || i == 160 || i == 212 || i == 213 || i == 253 || i == 258 || i == 301 || i == 302)
                    {
                        if (global.item[i] == 1)
                            ptankCount++
                    }
                }
                if (ptankCount != global.ptanks)
                {
                    global.ptanks = ptankCount
                    if (global.difficulty < 2)
                        global.maxpbombs = (2 * global.ptanks)
                    if (global.difficulty == 2)
                        global.maxpbombs = (1 * global.ptanks)
                    global.pbombs = global.maxpbombs
                }
                mtankCount = 0
                for (i = 0; i < array_length_1d(global.item); i++)
                {
                    if (i == 52 || i == 53 || i == 54 || i == 55 || i == 56 || i == 57 || i == 60 || i == 100 || i == 101 || i == 102 || i == 104 || i == 105 || i == 106 || i == 107 || i == 109 || i == 111 || i == 150 || i == 151 || i == 152 || i == 153 || i == 154 || i == 155 || i == 156 || i == 159 || i == 161 || i == 163 || i == 202 || i == 203 || i == 204 || i == 205 || i == 208 || i == 210 || i == 211 || i == 214 || i == 250 || i == 252 || i == 255 || i == 257 || i == 259 || i == 303 || i == 304 || i == 307 || i == 308 || i == 309)
                    {
                        if (global.item[i] == 1)
                            mtankCount++
                    }
                }
                if (mtankCount != global.mtanks)
                {
                    global.mtanks = mtankCount
                    if (global.difficulty < 2)
                        global.maxmissiles = (oControl.mod_Mstartingcount + (5 * global.mtanks))
                    if (global.difficulty == 2)
                        global.maxmissiles = (oControl.mod_Mstartingcount + (2 * global.mtanks))
                    global.missiles = global.maxmissiles
                }
                if resend
                {
                    size = 1024
                    type = buffer_grow
                    alignment = 1
                    itemBuffer = buffer_create(size, type, alignment)
                    buffer_seek(itemBuffer, buffer_seek_start, 0)
                    buffer_write(itemBuffer, buffer_u8, 50)
                    for (i = 0; i < array_length_1d(global.item); i++)
                        buffer_write(itemBuffer, buffer_u8, global.item[i])
                    bufferSize = buffer_tell(itemBuffer)
                    buffer_seek(itemBuffer, buffer_seek_start, 0)
                    buffer_write(itemBuffer, buffer_s32, bufferSize)
                    buffer_write(itemBuffer, buffer_u8, 50)
                    for (i = 0; i < array_length_1d(global.item); i++)
                        buffer_write(itemBuffer, buffer_u8, global.item[i])
                    network_send_packet(socket, itemBuffer, buffer_tell(itemBuffer))
                    buffer_delete(itemBuffer)
                }
                break
            case 51:
                resend = 0
                for (i = 0; i < array_length_1d(global.event); i++)
                {
                    if (i < 350)
                    {
                        receivedEvent = buffer_read(_buffer, buffer_u8)
                        if (floor(receivedEvent) > floor(global.event[i]) && i != 102)
                        {
                            global.event[i] = receivedEvent
                            global.eventPrev[i] = global.event[i]
                            if (i == 308)
                            {
                                if (receivedEvent == 1)
                                {
                                    if instance_exists(oCharacter)
                                    {
                                        with (oCharacter)
                                        {
                                            facing = 0
                                            if (global.currentsuit == 0)
                                                sprite_index = scr_suit_sprites(822, sFront_fusion)
                                            if (global.currentsuit == 1)
                                                sprite_index = scr_suit_sprites(1029, sFront_fusion)
                                            if (global.currentsuit == 2)
                                                sprite_index = scr_suit_sprites(848, sFront_fusion)
                                            global.enablecontrol = 0
                                            canbehit = 0
                                            oControl.displaygui = 0
                                            xVel = 0
                                            yVel = 0
                                            xAcc = 0
                                            yAcc = 0
                                        }
                                    }
                                    popup_text_ext("Ship reached", 120)
                                }
                                if (receivedEvent == 2)
                                {
                                    oControl.displaygui = 0
                                    global.enablecontrol = 0
                                    if instance_exists(oCharacter)
                                    {
                                        with (oCharacter)
                                        {
                                            xVel = 0
                                            yVel = 0
                                            xAcc = 0
                                            yAcc = 0
                                        }
                                    }
                                }
                                if (receivedEvent == 3)
                                {
                                    instance_create(0, 0, oFinalFadeout)
                                    mus_fadeout(musHatchling)
                                    global.enablecontrol = 0
                                    if instance_exists(oCharacter)
                                    {
                                        with (oCharacter)
                                        {
                                            xVel = 0
                                            yVel = 0
                                            xAcc = 0
                                            yAcc = 0
                                        }
                                    }
                                }
                                if (receivedEvent == 4)
                                {
                                    if instance_exists(oCharacter)
                                    {
                                        with (oCharacter)
                                        {
                                            xVel = 0
                                            yVel = 0
                                            xAcc = 0
                                            yAcc = 0
                                            canbehit = 1
                                        }
                                    }
                                    remove_persistent_objects()
                                    sfx_stop_all()
                                    global.vibL = 0
                                    global.vibR = 0
                                    global.ingame = 0
                                    global.darkness = 0
                                    global.gotolog = -1
                                    global.enablecontrol = 1
                                    global.transitiontype = 0
                                    oControl.displaygui = 1
                                    room_goto(rm_credits)
                                    mus_stop_all()
                                    mus_play_once(musCredits)
                                }
                            }
                        }
                        else if (floor(receivedEvent) < floor(global.event[i]) && i != 102)
                            resend = 1
                    }
                }
                if resend
                {
                    size = 1024
                    type = buffer_grow
                    alignment = 1
                    eventBuffer = buffer_create(size, type, alignment)
                    buffer_seek(eventBuffer, buffer_seek_start, 0)
                    buffer_write(eventBuffer, buffer_u8, 51)
                    for (i = 0; i < array_length_1d(global.event); i++)
                        buffer_write(eventBuffer, buffer_u8, global.event[i])
                    bufferSize = buffer_tell(eventBuffer)
                    buffer_seek(eventBuffer, buffer_seek_start, 0)
                    buffer_write(eventBuffer, buffer_s32, bufferSize)
                    buffer_write(eventBuffer, buffer_u8, 51)
                    for (i = 0; i < array_length_1d(global.event); i++)
                        buffer_write(eventBuffer, buffer_u8, global.event[i])
                    network_send_packet(socket, eventBuffer, buffer_tell(eventBuffer))
                    buffer_delete(eventBuffer)
                }
                break
            case 52:
                resend = 0
                for (i = 0; i < array_length_1d(global.metdead); i++)
                {
                    receivedMetdead = buffer_read(_buffer, buffer_u8)
                    if (receivedMetdead == 1 && global.metdead[i] == 0)
                    {
                        global.metdead[i] = receivedMetdead
                        global.metdeadPrev[i] = global.metdead[i]
                    }
                    else if (receivedMetdead == 0 && global.metdead[i] == 1)
                        resend = 1
                }
                if (global.gamemode == 1)
                {
                    countArea = 0
                    countLeft = 0
                    for (i = 0; i < array_length_1d(global.metdead); i++)
                    {
                        if (i <= 45)
                        {
                            if (global.metdead[i] == 0)
                                countLeft++
                            if (global.lavastate >= 0 && global.metdead[i] == 0 && i == 0)
                                countArea++
                            if (global.lavastate >= 1 && global.metdead[i] == 0 && (i == 1 || i == 2 || i == 3 || i == 4))
                                countArea++
                            if (global.lavastate >= 2 && global.metdead[i] == 0 && (i == 5 || i == 6 || i == 7 || i == 8 || i == 9 || i == 10 || i == 11 || i == 12))
                                countArea++
                            if (global.lavastate >= 3 && global.metdead[i] == 0 && (i == 13 || i == 14 || i == 15 || i == 16 || i == 17 || i == 18 || i == 19 || i == 20 || i == 21 || i == 22))
                                countArea++
                            if (global.lavastate >= 4 && global.metdead[i] == 0 && (i == 23 || i == 24))
                                countArea++
                            if (global.lavastate >= 5 && global.metdead[i] == 0 && (i == 25 || i == 26))
                                countArea++
                            if (global.lavastate >= 6 && global.metdead[i] == 0 && (i == 27 || i == 28 || i == 29 || i == 30 || i == 31 || i == 32))
                                countArea++
                            if (global.lavastate >= 7 && global.metdead[i] == 0 && (i == 33 || i == 34 || i == 35 || i == 36 || i == 37 || i == 38 || i == 39 || i == 40))
                                countArea++
                            if (global.lavastate >= 8 && global.metdead[i] == 0 && i == 41)
                                countArea++
                            if (global.lavastate >= 9 && global.metdead[i] == 0 && i == 42)
                                countArea++
                            if (global.lavastate >= 10 && global.metdead[i] == 0 && (i == 43 || i == 44 || i == 45))
                                countArea++
                        }
                    }
                    if (global.lavastate < 11)
                    {
                        if (global.event[303] == 0)
                            countLeft++
                        if (global.monstersleft != countLeft)
                            global.monstersleft = countLeft
                        if (global.monstersarea != countArea)
                            global.monstersarea = countArea
                    }
                }
                else if (global.gamemode > 1)
                {
                    countArea = 0
                    countLeft = 0
                    for (i = 0; i < array_length_1d(global.metdead); i++)
                    {
                        if (i <= 45)
                        {
                            if (global.metdead[i] == 0)
                                countLeft++
                            if (global.metdead[i] == 0 && i != 11 && i != 23 && i != 24 && i != 41 && i != 42 && i != 43 && i != 44 && i != 45)
                                countArea++
                            if (global.metdead[i] == 0 && global.event[109] == 1 && i == 11)
                                countArea++
                            if (global.metdead[i] == 0 && global.event[171] == 1 && (i == 23 || i == 24))
                                countArea++
                            if (global.lavastate >= 8 && global.metdead[i] == 0 && i == 41)
                                countArea++
                            if (global.lavastate >= 9 && global.metdead[i] == 0 && i == 42)
                                countArea++
                            if (global.lavastate >= 10 && global.metdead[i] == 0 && (i == 43 || i == 44 || i == 45))
                                countArea++
                        }
                    }
                    if (global.lavastate < 11)
                    {
                        if (global.event[303] == 0)
                            countLeft++
                        if (global.monstersleft != countLeft)
                            global.monstersleft = countLeft
                        if (global.monstersarea != countArea)
                            global.monstersarea = countArea
                    }
                }
                if resend
                {
                    size = 1024
                    type = buffer_grow
                    alignment = 1
                    metdeadBuffer = buffer_create(size, type, alignment)
                    buffer_seek(metdeadBuffer, buffer_seek_start, 0)
                    buffer_write(metdeadBuffer, buffer_u8, 52)
                    for (i = 0; i < array_length_1d(global.metdead); i++)
                        buffer_write(metdeadBuffer, buffer_u8, global.metdead[i])
                    bufferSize = buffer_tell(metdeadBuffer)
                    buffer_seek(metdeadBuffer, buffer_seek_start, 0)
                    buffer_write(metdeadBuffer, buffer_s32, bufferSize)
                    buffer_write(metdeadBuffer, buffer_u8, 52)
                    for (i = 0; i < array_length_1d(global.metdead); i++)
                        buffer_write(metdeadBuffer, buffer_u8, global.metdead[i])
                    network_send_packet(socket, metdeadBuffer, buffer_tell(metdeadBuffer))
                    buffer_delete(metdeadBuffer)
                }
                break
            case 53:
                part = buffer_read(_buffer, buffer_u8)
                resend = 0
                for (i = 0; i < array_height_2d(global.dmap); i++)
                {
                    for (j = 0; j < array_length_2d(global.dmap, i); j++)
                    {
                        if ((part == 1 && i < 20) || (part == 2 && i >= 20 && i < 40) || (part == 3 && i >= 40 && i < 60) || (part == 4 && i >= 60 && i < 96))
                        {
                            receiveddmap = buffer_read(_buffer, buffer_u8)
                            if (receiveddmap > global.dmap[i, j])
                            {
                                global.dmap[i, j] = receiveddmap
                                global.dmapPrev[i, j] = global.dmap[i, j]
                            }
                            else if (receiveddmap < global.dmap[i, j])
                                resend = 1
                        }
                    }
                }
                if resend
                {
                    size = 1024
                    type = buffer_grow
                    alignment = 1
                    dmapBuffer = buffer_create(size, type, alignment)
                    buffer_seek(dmapBuffer, buffer_seek_start, 0)
                    buffer_write(dmapBuffer, buffer_u8, 53)
                    for (i = 0; i < array_height_2d(global.dmap); i++)
                    {
                        for (j = 0; j < array_length_2d(global.dmap, i); j++)
                            buffer_write(dmapBuffer, buffer_u8, global.dmap[i, j])
                    }
                    bufferSize = buffer_tell(dmapBuffer)
                    buffer_seek(dmapBuffer, buffer_seek_start, 0)
                    buffer_write(dmapBuffer, buffer_s32, bufferSize)
                    buffer_write(dmapBuffer, buffer_u8, 53)
                    for (i = 0; i < array_height_2d(global.dmap); i++)
                    {
                        for (j = 0; j < array_length_2d(global.dmap, i); j++)
                            buffer_write(dmapBuffer, buffer_u8, global.dmap[i, j])
                    }
                    network_send_packet(socket, dmapBuffer, buffer_tell(dmapBuffer))
                    buffer_delete(dmapBuffer)
                }
                if global.ingame
                {
                    with (oControl)
                        event_user(2)
                }
                if (instance_exists(oMapCursor) && surface_exists(oSS_Control.s_map))
                    surface_free(oSS_Control.s_map)
                break
        }
}

