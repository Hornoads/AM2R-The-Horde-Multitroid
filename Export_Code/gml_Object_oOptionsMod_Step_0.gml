var keyBegin, key, keyboardLength;
if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)) && (!editing))
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        while (canedit[global.curropt] == 0)
            global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        targety = (op[global.curropt].y + lastitem)
        if (targety > vTargetY)
            targety = vTargetY
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)) && (!editing))
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        while (canedit[global.curropt] == 0)
        {
            global.curropt -= 1
            if (global.curropt < 0)
                global.curropt = lastitem
        }
        targety = (op[global.curropt].y + lastitem)
        if (targety > vTargetY)
            targety = vTargetY
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if global.shaders_compiled
        {
            if (global.curropt == num_color)
            {
                oControl.preferredcolor--
                if (oControl.preferredcolor < 1)
                    oControl.preferredcolor = 17
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_palette)
            {
                oControl.palette--
                if (oControl.palette < 0)
                    oControl.palette = 2
                sfx_play(sndMenuMove)
                event_user(2)
            }
        }
        if (global.curropt == num_difficulty && instance_exists(oClient))
        {
            oClient.syncedDifficulty--
            menuDifficulty--
            if (oClient.syncedDifficulty < 0)
            {
                oClient.syncedDifficulty = 3
                menuDifficulty = 3
            }
            with (oClient)
                event_user(0)
            sfx_play(sndMenuMove)
            event_user(2)
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if global.shaders_compiled
        {
            if (global.curropt == num_color)
            {
                oControl.preferredcolor++
                if (oControl.preferredcolor > 17)
                    oControl.preferredcolor = 1
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_palette)
            {
                oControl.palette++
                if (oControl.palette > 2)
                    oControl.palette = 0
                sfx_play(sndMenuMove)
                event_user(2)
            }
        }
        if (global.curropt == num_difficulty && instance_exists(oClient))
        {
            oClient.syncedDifficulty++
            menuDifficulty++
            if (oClient.syncedDifficulty > 3)
            {
                oClient.syncedDifficulty = 0
                menuDifficulty = 0
            }
            with (oClient)
                event_user(0)
            sfx_play(sndMenuMove)
            event_user(2)
        }
    }
    if ((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && global.curropt < lastitem && oControl.kDown == 0 && oControl.kUp == 0))
    {
        if (global.curropt == num_censorip)
            oControl.censorip = (!oControl.censorip)
        if (global.curropt == num_sequence)
            sequence = (!sequence)
        if (global.curropt == num_showname)
            showname = (!showname)
        if (global.curropt == num_elm && instance_exists(oClient))
        {
            oClient.elm = (!oClient.elm)
            elm = (!elm)
            with (oClient)
                event_user(1)
        }
        sfx_play(sndMenuMove)
        event_user(2)
    }
    keyBegin = oControl.kMenu1 > 0
    if (os_type != os_android)
        key = keyboard_check_pressed(vk_return)
    else
        key = oControl.kMenu1 > 0
    if ((key && oControl.kMenu1PushedSteps == 0) || (os_type != os_android && keyBegin && oControl.kMenu1PushedSteps == 0 && (!editing)))
    {
        if (global.curropt == num_ip && os_type != os_android)
        {
            editing = (!editing)
            op[num_ip].editing = editing
            if editing
                keyboard_string = ip
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_ip && os_type == os_android)
        {
            if (!editing)
                msg = get_string_async("Type in the IP Address to connect to.", ip)
            editing = (!editing)
            op[num_ip].editing = editing
        }
        if (global.curropt == num_port && os_type != os_android)
        {
            editing = (!editing)
            op[num_port].editing = editing
            if editing
                keyboard_string = port
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_port && os_type == os_android)
        {
            if (!editing)
                msg = get_integer_async("Type in the server port.", real(port))
            editing = (!editing)
            op[num_port].editing = editing
        }
        if (global.curropt == num_name && os_type != os_android)
        {
            editing = (!editing)
            op[num_name].editing = editing
            if editing
                keyboard_string = name
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_name && os_type == os_android)
        {
            if (!editing)
                msg = get_string_async("Type in your nametag.", name)
            editing = (!editing)
            op[num_name].editing = editing
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (global.curropt == num_connection)
        {
            if ((!instance_exists(oClient)) && global.canConnect)
            {
                instance_create(x, y, oClient)
                connectiontxt = "Disconnect"
                op[num_connection].label = connectiontxt
            }
            else
            {
                with (oClient)
                    instance_destroy()
                connectiontxt = "Connect"
                op[num_connection].label = connectiontxt
            }
            sfx_play(sndMenuSel)
            event_user(2)
        }
        if (global.curropt == num_seedgen)
        {
            if instance_exists(oClient)
            {
                randomize()
                oClient.seed = random_get_seed()
                random_set_seed(oClient.seed)
                send_seed()
            }
            sfx_play(sndMenuSel)
        }
        if (global.curropt == lastitem)
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            instance_create(50, 92, oOptionsMain)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
    }
    if (editing && global.curropt == num_ip && os_type != os_android)
    {
        ip = keyboard_string
        op[num_ip].optext = ip
    }
    if (editing && global.curropt == num_port && os_type != os_android)
    {
        port = keyboard_string
        op[num_port].optext = port
    }
    if (editing && global.curropt == num_name && os_type != os_android)
    {
        keyboardLength = string_length(keyboard_string)
        if (keyboardLength > 15)
            keyboard_string = string_copy(keyboard_string, 1, 15)
        name = keyboard_string
        op[num_name].optext = name
    }
}
if (targety != y)
    y += ((targety - y) / 10)
timer -= 1
if (timer < 0)
    timer = 8
if (instance_exists(oClient) && instance_exists(id) && instance_exists(connID))
{
    connectiontxt = "Disconnect"
    op[num_connection].label = connectiontxt
}
else if ((!instance_exists(oClient)) && instance_exists(id) && instance_exists(connID))
{
    connectiontxt = "Connect"
    op[num_connection].label = connectiontxt
}
if (!done)
{
    switch menuDifficulty
    {
        case 0:
            op[num_difficulty].optext = "Regret"
            break
        case 1:
            op[num_difficulty].optext = "Boring"
            break
        case 2:
            op[num_difficulty].optext = "Non-Canon"
            break
        case 3:
            op[num_difficulty].optext = "Authentic"
            break
    }

    switch elm
    {
        case 0:
            op[num_elm].optext = "Disabled"
            break
        case 1:
            op[num_elm].optext = "Enabled"
            break
    }

    if (oControl.censorip && (!op[num_ip].editing))
    {
        op[num_ip].optext = ""
        init = 1
    }
    if op[num_ip].editing
    {
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
            keyboard_string = clipboard_get_text()
    }
}
