scoreboard players add @s effects 0
scoreboard players random @s effects 1 29

effect @s[scores={effects=1}] speed 30 1
effect @s[scores={effects=2}] slowness 30 1
effect @s[scores={effects=3}] haste 30 1
effect @s[scores={effects=4}] mining_fatigue 30 1
effect @s[scores={effects=5}] strength 30 1
effect @s[scores={effects=6}] instant_health 30 1
effect @s[scores={effects=7}] instant_damage 30 1
effect @s[scores={effects=8}] jump_boost 30 1
effect @s[scores={effects=9}] nausea 1 20
effect @s[scores={effects=10}] regeneration 30 1
effect @s[scores={effects=11}] resistance
effect @s[scores={effects=12}] fire_resistance
effect @s[scores={effects=13}] water_breathing 30 1
effect @s[scores={effects=14}] invisibility 30 1
effect @s[scores={effects=15}] blindness 30 1
effect @s[scores={effects=16}] night_vision 30 1
effect @s[scores={effects=17}] hunger 30 1
effect @s[scores={effects=18}] weakness 30 1
effect @s[scores={effects=19}] poison 30 1
effect @s[scores={effects=20}] wither 30 1
effect @s[scores={effects=21}] health_boost 30 1
effect @s[scores={effects=22}] absorption 30 1
effect @s[scores={effects=23}] saturation 30 1
effect @s[scores={effects=24}] levitation 30 1
effect @s[scores={effects=25}] fatal_poison 30 1
effect @s[scores={effects=26}] conduit_power 30 1
effect @s[scores={effects=27}] slow_falling 30 1
effect @s[scores={effects=28}] bad_omen 6000 1
effect @s[scores={effects=29}] village_hero 3000 255

#It can only use at the edition of the Experimental Gameplay/Experiments of the 1.18.0 . If you're playing the Chinese Edition , You can ignore absolutely it , If you're playing the BE Edition , You can try to delete this sentence and only retain this command . And then change the 29 of the " scoreboard players random @s effects 1 29 " the into 30 (It’s on second sentence) : effect @s[scores={effects=30}] darkness 30 1

scoreboard players set @s[scores={effects=!0}] effects 0
