execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ detect ~ 256 ~ light_block 0 tp ~~1~
execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ detect ~ 256 ~ light_block 0 tag @s add ore

execute @e[tag=ore,name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item] ~~~ setblock ~ 256 ~ air
execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore,tag=!fall] ~~~ detect ~~~ ancient_debris 0 tp ~~1~
execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore] ~~~ detect ~~1~ air 0 tag @s add fall

execute @e[name="远古残骸",rx=0,rxm=0,ry=0,rym=0,type=item,tag=ore,tag=fall] ~~~ detect ~~-1~ ancient_debris 0 setblock ~~-1~ air 0 destroy