execute @e[tag=!ore,name="金块",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ detect ~ 256 ~ light_block 1 tag @s add ore
execute @e[name="金块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ setblock ~ 256 ~ air
execute @e[name="金块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ execute @p[r=10] ~~~ function data/effects
execute @e[name="金块",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ kill
