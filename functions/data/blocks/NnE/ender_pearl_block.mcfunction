#67.5%
scoreboard players add t time3 5
scoreboard players add @a time3 0
scoreboard players operation @a time3 = t time3
execute @p[scores={time3=42001..}] ~~~ scoreboard players set t time3 0

scoreboard players add b epb 0
scoreboard players add @a epb 0
scoreboard players operation @a epb = t epb
execute @p[scores={time3=42000}] ~~~ scoreboard players random t epb 1 10000

#summon
execute @r[scores={epb=1..6750}] ~~~ summon armor_stand "§r§fepb§r" ~ 1000 ~
execute @r[scores={epb=1..6750}] ~~~ spreadplayers ~~ 0 500 @e[type=armor_stand,name="§r§fepb§r",tag=!epb]
execute @r[scores={epb=1..6750}] ~~~ tag @e[type=armor_stand,name="§r§fepb§r",tag=!epb] add epb
execute @r[scores={epb=1..6750}] ~~~ execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=!epb2] ~~~ tp ~~1000~
execute @r[scores={epb=1..6750}] ~~~ execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=!epb2] ~~~ setblock ~~-1000~ prismarine 1
execute @r[scores={epb=1..6750}] ~~~ tag @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=!epb2] add epb2
scoreboard players set @a[scores={epb=1..6750}] epb 0

#time's up
scoreboard players add @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2] epb.time 5
execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2,scores={epb.time=30000..}] ~~~ setblock ~~-1000~ air
kill @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2,scores={epb.time=30000..}] 

#destroy
execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2,scores={epb.time=..29999}] ~~~ kill @e[type=item,name="暗海晶石",rx=0,rxm=0,ry=0,rym=0,y=~-990,r=10,c=1]
execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2,scores={epb.time=..29999}] ~~~ detect ~~-1~ air -1 give @p[y=~-990,r=10] ender_pearl
execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2,scores={epb.time=..29999}] ~~~ detect ~~-1~ air -1 kill

#data
execute @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2] ~~~ tp ~~~
effect @e[type=armor_stand,name="§r§fepb§r",tag=epb,tag=epb2] invisibility 1 1 true