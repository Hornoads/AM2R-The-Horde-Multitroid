event_inherited()
canbeX = 0
myhealth = 10
damage = 4
hitsound = 77
deathsound = 80
platyoffset = -6
frozenspr = 325
target = 0
canattack = 1
state = 1
image_speed = 0
if (global.difficulty == 0)
    alarm[0] = 90
if (global.difficulty == 1)
    alarm[0] = 60
if (global.difficulty == 2)
    alarm[0] = 60
hitemp = 1
empspr = 324
freezefall = 0
mad = 0
if (global.event[62] == 1)
{
    mad += 1
    myhealth += 5
}
if (global.event[63] == 1)
{
    mad += 1
    myhealth += 5
}
AFDayEnemy(sHornoadAttack, 1817)
