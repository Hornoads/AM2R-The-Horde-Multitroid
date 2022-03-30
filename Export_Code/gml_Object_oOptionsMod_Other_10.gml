var tempcount;
sep = 16
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = "Multitroid settings"
tempcount = 1
op[num_censorip] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_censorip].label = "IP Address Censoring"
op[num_censorip].optionid = num_censorip
op[num_ip] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_ip].label = "IP Address"
op[num_ip].optionid = num_ip
op[num_port] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_port].label = "Port"
op[num_port].optionid = num_port
op[num_name] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_name].label = "Display name"
op[num_name].optionid = num_name
op[num_sequence] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_sequence].label = "Reactor sequence"
op[num_sequence].optionid = num_sequence
op[num_color] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_color].label = "Preferred color"
op[num_color].optionid = num_color
if (!global.shaders_compiled)
{
    op[num_color].enabled = 0
    canedit[num_color] = 0
}
op[num_palette] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_palette].label = "Palette"
op[num_palette].optionid = num_palette
if (!global.shaders_compiled)
{
    op[num_palette].enabled = 0
    canedit[num_palette] = 0
}
op[num_showname] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_showname].label = "Show names"
op[num_showname].optionid = num_showname
op[num_difficulty] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_difficulty].label = "Difficulty"
op[num_difficulty].optionid = num_difficulty
op[num_difficulty].enabled = 0
canedit[num_difficulty] = 0
op[num_elm] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_elm].label = "Extremely Lethal Mode"
op[num_elm].optionid = num_elm
op[num_elm].enabled = 0
canedit[num_elm] = 0
op[num_seedgen] = instance_create(x, (y + (sep * tempcount++)), oPauseOption)
op[num_seedgen].optionid = num_seedgen
op[num_seedgen].label = "Generate seed"
op[num_seedgen].enabled = 0
canedit[num_seedgen] = 0
op[num_connection] = instance_create(x, (y + (sep * tempcount++)), oPauseOption)
op[num_connection].optionid = num_connection
op[num_connection].label = connectiontxt
connID = op[num_connection].id
op[lastitem] = instance_create(x, (y + (sep * (lastitem + 1))), oPauseOption)
op[lastitem].optionid = lastitem
op[lastitem].label = get_text("GlobalOptions", "Exit")
event_user(2)
