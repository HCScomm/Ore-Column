execute @e[tag=!ore,name="岩浆方块",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ detect ~ 256 ~ light_block 0 tag @s add ore
execute @e[name="岩浆方块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ setblock ~ 256 ~ air
execute @e[name="岩浆方块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ gamerule sendcommandfeedback false
execute @e[name="岩浆方块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ give @p[r=10] blaze_rod
execute @e[name="岩浆方块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ gamerule sendcommandfeedback true
execute @e[name="岩浆方块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ kill
