canbeX = 0
omega_head = ds_map_find_value(global.omega_types, room)
if (omega_head == undefined)
    omega_head = ds_map_find_value(global.omega_types, 332)
omega_head_roar = asset_get_index((sprite_get_name(omega_head) + "_Roar"))
roar_frame = 0
if (omega_head == sMOmega_Head_Fusion)
    omega_body = 1520
else
    omega_body = 617
makeActive()
setCollisionBounds(-10, -30, 10, 46)
myhealth = 350
myhealth = global.mod_omegahealth
flashing = 0
stunned = 0
fxtimer = 0
canbehit = 1
hpush = 7
vpush = -3
damage = 100
damage = global.mod_omegadamage
damagedealt = 0
givebackhp = 500
starthealth = myhealth
hits_taken = 0
roaring = 0
limit_right = 448
limit_left = 192
targetx2 = (room_width / 2)
target_mode = 0
mask_obj = instance_create(x, y, oMOmegaMask)
mask2_obj = instance_create(x, y, oMOmegaMask2)
mask3_obj = instance_create(x, y, oMOmegaMask3)
mask4_obj = instance_create(x, y, oMOmegaMask4)
grab_obj = -4
surf = surface_create(200, 160)
surf_x = 100
surf_y = 100
image_speed = 0
facing = 1
state = 0
statetime = 0
xoff = 0
yoff = 0
body_spr = omega_body
body_frame = 0
body_x = 0
body_y = 0
body_angle = 0
body_angle_base = 0
body_target_angle = 0
body_angle_max = 25
body_angle_min = -35
body_shake = 0
eyes_frame = -1
eyes_close = 0
head_obj = instance_create(x, y, oMOmegaHead)
head_spr = omega_head
head_follow = 1
head_frame = 0
head_x = 0
head_y = 0
head_xoff = 0
head_yoff = 0
head_len = 72
head_dir = 44
head_angle = 0
head_target_angle = 0
head_angle_max = 45
head_angle_min = -45
head_shake = 0
mouth_x = 0
mouth_y = 0
mouth_len = 21
mouth_dir = -77
farm_spr = 619
farm_frame = 0
farm_x = 0
farm_y = 0
farm_xoff = 0
farm_len = 37
farm_dir = 55
farm_shake = 0
barm_spr = 612
barm_frame = 0
barm_x = 0
barm_y = 0
barm_xoff = 0
barm_len = 48
barm_dir = 35
barm_shake = 0
fleg_spr = 621
fleg_frame = 0
fleg_x = 0
fleg_y = 0
fleg_xoff = 0
fleg_yoff = 0
fleg_shake = 0
bleg_spr = 613
bleg_frame = 0
bleg_x = 0
bleg_y = 0
bleg_xoff = 0
bleg_yoff = 0
bleg_shake = 0
legx = 0
legy = 0
tail = instance_create(x, y, oMOmegaTail)
tail_len = 17
tail_dir = 163
targetx = 0
targety = 0
alarm[9] = 1
dmg = 0
flashtime = 0
laststate = 0
dead = 0
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
xtreme = 0
if (oControl.mod_monstersextremecheck == 1)
{
    xtreme = 1
    myhealth *= 1.2
    damage *= 1.2
}
