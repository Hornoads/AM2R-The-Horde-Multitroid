var size, type, alignment, bufferSize, result, i, arr, ID, findID, h, arrList, arrID, arrX, arrY, findHatchlingID, hatchling;
if (!connected)
{
    if (isConnected >= 0)
    {
        connected = 1
        popup_text("Connected")
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 1)
        buffer_write(buffer, buffer_string, name)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 1)
        buffer_write(buffer, buffer_string, name)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        instance_create(x, y, oNametag)
    }
    else
    {
        instance_destroy()
        popup_text("Failed to connect")
    }
}
if instance_exists(oCharacter)
{
    if (global.event[203] < 9 && string_lower(reactorsequence) == "disabled")
        global.event[203] = 9
}
if (global.event[303] > 0)
    phase = 0
if (global.event[172] != 3)
    global.event[172] = 3
if (room == rm_death)
{
    phase = 0
    queenHealth = (global.mod_queenHstart + (global.mtanks * 10))
}
if ((room == rm_a4b02 || room == rm_a4b03 || room == rm_a4b04 || room == rm_a4b05 || room == rm_a4b06 || room == rm_a4b07 || room == rm_a4b08 || room == rm_a4b09 || room == rm_a4b10 || room == rm_a4b11 || room == rm_a4b12 || room == rm_a4b13 || room == rm_a4b14 || room == rm_a4b15 || room == rm_a4b16 || room == rm_a4b17 || room == rm_a4b18 || room == rm_a4b19) && global.event[203] > 0 && global.event[203] < 9 && (!instance_exists(oA4EscapeControl)))
    instance_create(x, y, oA4EscapeControl)
if (room == rm_a4b01 && global.event[203] == 9 && instance_exists(oA4EscapeControl))
{
    with (oA4EscapeControl)
        event_user(0)
}
if ((!instance_exists(oQueen)) && global.event[303] == 0)
{
    if (!queenHealthResetQueued)
    {
        queenHealthResetQueued = 1
        alarm[1] = 5
    }
}
if (instance_exists(oQueen) && (!is_undefined(oQueen.phase)))
{
    if (global.event[303] > 0 && (!queenDead))
    {
        with (oQueen)
        {
            state = 100
            statetime = 0
            mus_fadeout(musQueen)
            mus_fadeout(musQueen2)
            mus_fadeout(musQueen3)
            mus_fadeout(musQueenBreak)
            mus_fadeout(musQueenIntro)
        }
        queenDead = 1
    }
    if instance_exists(oQueenHead)
    {
        with (oQueenHead)
        {
            if (oQueen.phase > 3 && instance_exists(147759))
            {
                oQueen.phase = 3
                if (head_damage == 2)
                    head_damage = 1
            }
        }
    }
}
if keyboard_check_pressed(vk_f2)
    instance_destroy()
if keyboard_check_pressed(vk_f3)
    popup_text_ext(string(oControl.seed), 300)
if keyboard_check_pressed(vk_f4)
{
    showName = (-showName)
    switch showName
    {
        case 0:
            oControl.showname = "disabled"
            popup_text("Nametags disabled")
            break
        case 1:
            oControl.showname = "enabled"
            popup_text("Nametags enabled")
            break
    }

}
if instance_exists(oCharacter)
{
    posX = global.mapposx
    posY = global.mapposy
}
if ((room == rm_a4b02 || room == rm_a4b03 || room == rm_a4b04 || room == rm_a4b05 || room == rm_a4b06 || room == rm_a4b07 || room == rm_a4b08 || room == rm_a4b09 || room == rm_a4b10 || room == rm_a4b11 || room == rm_a4b12 || room == rm_a4b13 || room == rm_a4b14 || room == rm_a4b15 || room == rm_a4b16 || room == rm_a4b17 || room == rm_a4b18 || room == rm_a4b19) && global.event[203] == 9 && (!teleport))
{
    teleport = 1
    global.targetx = 624
    global.targety = 144
    room_change(216, 1)
}
if (instance_exists(oCharacter) && (oCharacter.state == oCharacter.SAVINGFX || oCharacter.state == oCharacter.SAVINGSHIPFX || oCharacter.state == oCharacter.SAVINGSHIP))
    refill_heath_ammo()
if (oControl.mod_monstersextremecheck == 1 && oControl.mod_monstersextreme == 0 && global.event[302] > 0)
    oControl.mod_monstersextreme = 1
else if (oControl.mod_monstersextremecheck == 0 && oControl.mod_monstersextreme == 1)
    oControl.mod_monstersextreme = 0
if (global.log[21] > 0 && global.event[309] == 0)
    global.event[309] = 1
if (global.event[309] == 1 && global.log[21] < 1)
    global.log[21] = 1
if (time == 0 && connected && instance_exists(id))
{
    if (ds_list_size(global.idList) > 0)
    {
        checkListID = ds_list_create()
        for (i = 0; i < ds_list_size(global.idList); i++)
        {
            arr = ds_list_find_value(global.idList, i)
            ds_list_add(checkListID, arr[0, 0])
        }
        for (i = 0; i < ds_list_size(roomList); i++)
        {
            ID = ds_list_find_value(roomList, i)
            findID = ds_list_find_index(checkListID, ID)
            if (findID < 0)
                ds_list_delete(roomList, i)
        }
        for (i = 0; i < ds_list_size(roomListData); i++)
        {
            arr = ds_list_find_value(roomListData, i)
            findID = ds_list_find_index(checkListID, arr[0])
            if (findID < 0)
                ds_list_delete(roomListData, i)
        }
        for (i = 0; i < ds_list_size(posData); i++)
        {
            arr = ds_list_find_value(posData, i)
            findID = ds_list_find_index(checkListID, arr[0])
            if (findID < 0)
                ds_list_delete(posData, i)
        }
        ds_list_destroy(checkListID)
    }
    time = 60
}
if (maxpbombsTimer == 0 && connected)
{
    if (global.maxpbombsPrev != global.maxpbombs)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 13)
        buffer_write(buffer, buffer_u8, global.maxpbombs)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 13)
        buffer_write(buffer, buffer_u8, global.maxpbombs)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        maxpbombsChanged = 1
    }
    if (!maxpbombsChanged)
        maxpbombsTimer = 10
    if maxpbombsChanged
    {
        maxpbombsChanged = 0
        maxpbombsTimer = 75
    }
}
if (maxhealthTimer == 0 && connected)
{
    if (global.maxhealthPrev != global.maxhealth)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 14)
        buffer_write(buffer, buffer_u16, global.maxhealth)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 14)
        buffer_write(buffer, buffer_u16, global.maxhealth)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        maxhealthChanged = 1
    }
    if (!maxhealthChanged)
        maxhealthTimer = 10
    if maxhealthChanged
    {
        maxhealthChanged = 0
        maxhealthTimer = 75
    }
}
if (etanksTimer == 0 && connected)
{
    if (global.etanksPrev != global.etanks)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 15)
        buffer_write(buffer, buffer_u8, global.etanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 15)
        buffer_write(buffer, buffer_u8, global.etanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        etanksChanged = 1
    }
    if (!etanksChanged)
        etanksTimer = 10
    if etanksChanged
    {
        etanksChanged = 0
        etanksTimer = 75
    }
}
if (mtanksTimer == 0 && connected)
{
    if (global.mtanksPrev != global.mtanks)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 16)
        buffer_write(buffer, buffer_u8, global.mtanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 16)
        buffer_write(buffer, buffer_u8, global.mtanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        mtanksChanged = 1
    }
    if (!mtanksChanged)
        mtanksTimer = 10
    if mtanksChanged
    {
        mtanksChanged = 0
        mtanksTimer = 75
    }
}
if (stanksTimer == 0 && connected)
{
    if (global.stanksPrev != global.stanks)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 17)
        buffer_write(buffer, buffer_u8, global.stanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 17)
        buffer_write(buffer, buffer_u8, global.stanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        stanksChanged = 1
    }
    if (!stanksChanged)
        stanksTimer = 10
    if stanksChanged
    {
        stanksChanged = 0
        stanksTimer = 75
    }
}
if (ptanksTimer == 0 && connected)
{
    if (global.ptanksPrev != global.ptanks)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 18)
        buffer_write(buffer, buffer_u8, global.ptanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 18)
        buffer_write(buffer, buffer_u8, global.ptanks)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        ptanksChanged = 1
    }
    if (!ptanksChanged)
        ptanksTimer = 10
    if ptanksChanged
    {
        ptanksChanged = 0
        ptanksTimer = 75
    }
}
if (healthTimer == 0 && connected)
{
    if (global.playerhealthPrev != global.playerhealth)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 25)
        buffer_write(buffer, buffer_s16, global.playerhealth)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 25)
        buffer_write(buffer, buffer_s16, global.playerhealth)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        healthTimer = 1
    }
    if (!healthChanged)
        healthTimer = 10
    if healthChanged
    {
        healthChanged = 0
        healthTimer = 75
    }
}
if (missilesTimer == 0 && connected)
{
    if (global.missilesPrev != global.missiles)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 26)
        buffer_write(buffer, buffer_s16, global.missiles)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 26)
        buffer_write(buffer, buffer_s16, global.missiles)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        missilesTimer = 1
    }
    if (!missilesChanged)
        missilesTimer = 10
    if missilesChanged
    {
        missilesChanged = 0
        missilesTimer = 75
    }
}
if (smissilesTimer == 0 && connected)
{
    if (global.smissilesPrev != global.smissiles)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 27)
        buffer_write(buffer, buffer_s16, global.smissiles)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 27)
        buffer_write(buffer, buffer_s16, global.smissiles)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        smissilesTimer = 1
    }
    if (!smissilesChanged)
        smissilesTimer = 10
    if smissilesChanged
    {
        smissilesChanged = 0
        smissilesTimer = 75
    }
}
if (pbombsTimer == 0 && connected)
{
    if (global.pbombsPrev != global.pbombs)
    {
        buffer_delete(buffer)
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 28)
        buffer_write(buffer, buffer_s16, global.pbombs)
        buffer_write(buffer, buffer_u8, global.clientID)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 28)
        buffer_write(buffer, buffer_s16, global.pbombs)
        buffer_write(buffer, buffer_u8, global.clientID)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
        pbombsTimer = 1
    }
    if (!pbombsChanged)
        pbombsTimer = 10
    if pbombsChanged
    {
        pbombsChanged = 0
        pbombsTimer = 75
    }
}
if teleport
{
    teleportTimer--
    if (teleportTimer <= 0)
    {
        teleport = 0
        teleportTimer = 60
    }
}
if (disconnectTimer <= 0)
    instance_destroy()
if (pingTimer <= 0)
{
    pingTimer = 90
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 103)
    buffer_write(buffer, buffer_u32, current_time)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 103)
    buffer_write(buffer, buffer_u32, current_time)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
}
if (resetTimer == 0)
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 20)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 20)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    show_debug_message("it sent why doesn't this work pls")
}
time--
maxpbombsTimer--
maxhealthTimer--
etanksTimer--
mtanksTimer--
stanksTimer--
ptanksTimer--
healthTimer--
missilesTimer--
smissilesTimer--
pbombsTimer--
disconnectTimer--
pingTimer--
if (resetTimer > -1)
    resetTimer--
if instance_exists(id)
{
    if (ds_list_size(roomListData) > 0)
    {
        for (h = 0; h < ds_list_size(roomListData); h++)
        {
            arrList = ds_list_find_value(roomListData, h)
            arrID = arrList[0]
            arrX = arrList[1]
            arrY = arrList[2]
            findHatchlingID = ds_list_find_index(global.hatchlingList, arrID)
            if instance_exists(oHatchling)
            {
                if (findHatchlingID == -1)
                {
                    ds_list_add(global.hatchlingList, arrID)
                    hatchling = instance_create(arrX, arrY, oHatchling)
                    with (hatchling)
                    {
                        targetx = arrX
                        targety = arrY
                        myid = arrID
                    }
                }
            }
            else if (findHatchlingID >= 0)
                ds_list_delete(global.hatchlingList, findHatchlingID)
        }
    }
    else if (ds_list_size(global.hatchlingList) > 0)
        ds_list_clear(global.hatchlingList)
}
switch syncedDifficulty
{
    case 0:
        if (global.difficulty != syncedDifficulty)
            global.difficulty = syncedDifficulty
        if (oControl.mod_fusion != 0)
            oControl.mod_fusion = 0
        if (oControl.mod_diffmult != 1)
            oControl.mod_diffmult = 1
        break
    case 1:
        if (global.difficulty != syncedDifficulty)
            global.difficulty = syncedDifficulty
        if (oControl.mod_fusion != 0)
            oControl.mod_fusion = 0
        if (oControl.mod_diffmult != 1)
            oControl.mod_diffmult = 1
        break
    case 2:
        if (global.difficulty != syncedDifficulty)
            global.difficulty = syncedDifficulty
        if (oControl.mod_fusion != 0)
            oControl.mod_fusion = 0
        if (oControl.mod_diffmult != 2)
            oControl.mod_diffmult = 2
        break
    case 3:
        if (global.difficulty != 2)
            global.difficulty = 2
        if (oControl.mod_fusion != 1)
            oControl.mod_fusion = 1
        if (oControl.mod_diffmult != 4)
            oControl.mod_diffmult = 4
        break
}

if (oControl.mod_monstersextremecheck != elm)
    oControl.mod_monstersextremecheck = elm
