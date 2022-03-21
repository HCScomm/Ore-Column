scoreboard players add t time 5
scoreboard players add @a time 0
scoreboard players operation @a time = t time
execute @p[scores={time=6301..}] ~~~ scoreboard players set t time 0

execute @a[scores={time=6000..6300},c=1] ~~~ summon armor_stand "§r§fore§r" ~ 1000 ~
execute @r[scores={time=6000..6300}] ~~~ spreadplayers ~~ 3 1000 @e[type=armor_stand,name="§r§fore§r"]

scoreboard players add @e[type=armor_stand,name="§r§fore§r"] ore 0
scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=..0}] ore 1 23
execute @p[tag=!ok3] ~~~ scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=12..20}] ore 1 23
execute @p[tag=!ok1] ~~~ scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=21..22}] ore 1 23
execute @p[tag=!ok2] ~~~ scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=23}] ore 1 22

execute @e[type=armor_stand,name="§r§fore§r",scores={ore=0}] ~~~ detect ~ 256 ~ light_block 0 spreadplayers ~~ 0 3 @s

scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=12..23}] ob 1 10000
scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=12..20,ob=5001..10000}] ore 1 20
scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=21..22,ob=4201..10000}] ore 1 20
scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=23,ob=4901..10000}] ore 1 20
scoreboard players random @e[type=armor_stand,name="§r§fore§r",scores={ore=12..20,ob=5001..10000}] ore 1 11

execute @e[type=armor_stand,name="§r§fore§r",scores={ore=1}] ~~~ fill ~~-1~ ~~8~ coal_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=2}] ~~~ fill ~~-1~ ~~8~ redstone_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=3}] ~~~ fill ~~-1~ ~~8~ copper_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=4}] ~~~ fill ~~-1~ ~~8~ iron_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=5}] ~~~ fill ~~-1~ ~~8~ gold_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=6}] ~~~ fill ~~-1~ ~~8~ lapis_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=7}] ~~~ fill ~~-1~ ~~8~ emerald_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=8}] ~~~ fill ~~-1~ ~~8~ diamond_ore
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=9}] ~~~ fill ~~-1~ ~~8~ ancient_debris
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=10}] ~~~ fill ~~-1~ ~~8~ stone
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=11}] ~~~ fill ~~-1~ ~~8~ obsidian

execute @e[type=armor_stand,name="§r§fore§r",scores={ore=12,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  coal_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=13,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  redstone_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=14,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  copper_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=15,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  iron_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=16,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  gold_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=17,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  lapis_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=18,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  emerald_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=19,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  diamond_block
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=20,ob=1..5000}] ~~~ fill ~~-1~ ~~1~  netherite_block

execute @e[type=armor_stand,name="§r§fore§r",scores={ore=21,ob=1..4200}] ~~~ setblock ~~-1~  magma
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=22,ob=1..4200}] ~~~ setblock ~~-1~  prismarine 1
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=23,ob=1..4900}] ~~~ setblock ~~-1~  gold_block 1

execute @e[type=armor_stand,name="§r§fore§r",scores={ore=1..22}] ~~~ setblock ~ 256 ~ light_block 0
execute @e[type=armor_stand,name="§r§fore§r",scores={ore=23}] ~~~ setblock ~ 256 ~ light_block 1
tp @e[type=armor_stand,name="§r§fore§r",scores={ore=!0}] 999 999 -999
kill @e[type=armor_stand,name="§r§fore§r",scores={ore=!0}]

effect @e[type=armor_stand,name="§r§fore§r"] invisibility 1 1 true

effect @e[type=armor_stand,name="lb"] invisibility 1 1 true
execute @e[type=armor_stand,name="lb"] ~~~ tp ~~~
scoreboard players add @e[type=armor_stand,name="lb"] lb 5
execute @e[type=armor_stand,name="lb",scores={lb=150..}] ~~~ fill ~ 256 ~ ~ 256 ~ air 0 replace light_block 0
kill @e[type=armor_stand,name="lb",scores={lb=150..}]

execute @e[type=armor_stand,name="lb"] ~~~ scoreboard players add c count 1
scoreboard players reset c count
scoreboard players add @a count 0
scoreboard players operation @a count = c count
execute @p[scores={count=2..}] ~~~ kill @e[type=armor_stand,name="lb",c=1]
