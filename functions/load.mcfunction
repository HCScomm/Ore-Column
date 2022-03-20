#加载
tickingarea add circle 9999 256 -9999 1 commands
structure load HCS:commands 9999 256 -9999
structure load HCS:ore 9999 255 -9999
execute @a[tag=!load3] ~~~ structure load HCS:start 9999 254 -9999

#删除记分板
scoreboard objectives remove time
scoreboard objectives remove ore
scoreboard objectives remove lb
scoreboard objectives remove count
scoreboard objectives remove text
scoreboard objectives remove ob

#记分板
scoreboard objectives add time dummy
scoreboard objectives add ore dummy
scoreboard objectives add lb dummy
scoreboard objectives add count dummy
scoreboard objectives add text dummy
scoreboard objectives add ob dummy

#日期
	##记分板
	scoreboard objectives add year dummy
	scoreboard objectives add month dummy
	scoreboard objectives add day dummy
	scoreboard players add @a year 0
	scoreboard players add @a month 0
	scoreboard players add @a day 0
	scoreboard players random @a day 1 31
	scoreboard players random @a year 2009 2022
	scoreboard players random @a month 1 12
	
	##2月
		###非闰年
		scoreboard players random @a[scores={year=!2020,month=2,day=29..31}] day 1 28
		###闰年
		scoreboard players random @a[scores={year=2012,month=2,day=30..31}] day 1 29
		scoreboard players random @a[scores={year=2016,month=2,day=30..31}] day 1 29
		scoreboard players random @a[scores={year=2020,month=2,day=30..31}] day 1 29
		
	##4,6,9,11月
	scoreboard players random @a[scores={month=4,day=31}] day 1 30
	scoreboard players random @a[scores={month=6,day=31}] day 1 30
	scoreboard players random @a[scores={month=9,day=31}] day 1 30
	scoreboard players random @a[scores={month=11,day=31}] day 1 30
	
	##2009年5月17日
	scoreboard players random @a[scores={year=2009,month=1..4,day=1..16}] month 5 12
	scoreboard players random @a[scores={year=2009,month=1..4,day=1..16}] day 17 31

#规则
gamerule commandblockoutput false

#文本
execute @a[tag=!load] ~~~ tellraw @s {"rawtext":[{"text":"尊敬的§e@"},{"selector":"@s"},{"text":"§r：\n  你好, 我是原作者纯绿-滑稽, 你也可以直接叫我HCScomm, 我很高兴你能够使用这个行为包. 这是我的一些信息: \n邮箱: §ehcscomm@163.com§r\nbilibili: §a纯绿-滑稽§r\nMinecraft代号/GitHub账号: §cHCScomm§r\n  希望你能够支持我！ \n作者 纯绿-滑稽\n"},{"score":{"name":"@s","objective":"year"}},{"text":"年"},{"score":{"name":"@s","objective":"month"}},{"text":"月"},{"score":{"name":"@s","objective":"day"}},{"text":"日"}]}
tag @a add load
tag @a add load2
