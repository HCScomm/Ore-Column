execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ tag @e[rx=0,rxm=0,ry=0,rym=0,type=item,name="远古残骸",tag=!ore] add ore
execute @e[tag=!ore,name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ detect ~ 256 ~ light_block 0 summon armor_stand "lb" ~ 1000 ~
execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ detect ~ 256 ~ light_block 0 tag @s add ore
execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ detect ~ 256 ~ light_block 0 execute @s ~~~ detect ~~1~ ancient_debris 0 setblock ~~1~ air 0 destroy
execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ detect ~ 256 ~ light_block 0 execute @s ~~~ detect ~~-1~ ancient_debris 0 setblock ~~-1~ air 0 destroy