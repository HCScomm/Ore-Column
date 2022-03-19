#87.5%
scoreboard players add t time2 5
scoreboard players add @a time2 0
scoreboard players operation @a time2 = t time2
execute @p[scores={time2=30001..}] ~~~ scoreboard players set t time2 0

scoreboard players add b brb 0
scoreboard players add @a brb 0
scoreboard players operation @a brb = t brb
execute @p[scores={time2=30000}] ~~~ scoreboard players random t brb 1 10000

#summon
execute @r[scores={brb=1..8750}] ~~~ summon armor_stand "§r§fbrb§r" ~ 1000 ~
execute @r[scores={brb=1..8750}] ~~~ spreadplayers ~~ 0 500 @e[type=armor_stand,name="§r§fbrb§r",tag=!brb]
execute @r[scores={brb=1..8750}] ~~~ tag @e[type=armor_stand,name="§r§fbrb§r",tag=!brb] add brb
execute @r[scores={brb=1..8750}] ~~~ execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=!brb2] ~~~ tp ~~1000~
execute @r[scores={brb=1..8750}] ~~~ execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=!brb2] ~~~ setblock ~~-1000~ magma
execute @r[scores={brb=1..8750}] ~~~ tag @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=!brb2] add brb2
scoreboard players set @a[scores={brb=1..8750}] brb 0

#time's up
scoreboard players add @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2] brb.time 5
execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2,scores={brb.time=30000..}] ~~~ setblock ~~-1000~ air
kill @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2,scores={brb.time=30000..}] 

#destroy
execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2,scores={brb.time=..29999}] ~~~ kill @e[type=item,name="岩浆块",rx=0,rxm=0,ry=0,rym=0,y=~-990,r=10,c=1]
execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2,scores={brb.time=..29999}] ~~~ detect ~~-1~ air -1 give @p[y=~-990,r=10] blaze_rod
execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2,scores={brb.time=..29999}] ~~~ detect ~~-1~ air -1 kill

#data
execute @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2] ~~~ tp ~~~
effect @e[type=armor_stand,name="§r§fbrb§r",tag=brb,tag=brb2] invisibility 1 1 true