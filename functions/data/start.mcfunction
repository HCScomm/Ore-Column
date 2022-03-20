scoreboard players add t text 5
scoreboard players add @a text 0
scoreboard players operation @a text = t text
tellraw @a[scores={text=300}]{"rawtext":[{"text":"<纯绿-滑稽> 你好，我是作者纯绿-滑稽. "}]}
tellraw @a[scores={text=500}]{"rawtext":[{"text":"<纯绿-滑稽> 感谢你使用行为包，祝你愉快. "}]}
tellraw @a[scores={text=700}]{"rawtext":[{"text":"<纯绿-滑稽> 在此之前，我将会问你一些问题. "}]}
tellraw @a[scores={text=900}]{"rawtext":[{"text":"<纯绿-滑稽> 你只要回答\n             Yes(/function yes) 或者\n             No(/function no)就行了."}]}
tellraw @a[scores={text=1200}]{"rawtext":[{"text":"<纯绿-滑稽> OK, let's begin. "}]}

tellraw @a[scores={text=1500}]{"rawtext":[{"text":"<纯绿-滑稽> 问题1:是否添加NnE模式? "}]}
tag @a[scores={text=1500}] add question1
execute @a[tag=question1] ~~~ scoreboard players set t text 1505

tellraw @a[scores={text=1800}]{"rawtext":[{"text":"<纯绿-滑稽> 下一个问题. "}]}
tellraw @a[scores={text=1900}]{"rawtext":[{"text":"<纯绿-滑稽> 问题2:是否添加EB模式? "}]}
tag @a[scores={text=1900}] add question2
execute @a[tag=question2] ~~~ scoreboard players set t text 1905

tellraw @a[scores={text=2200}]{"rawtext":[{"text":"<纯绿-滑稽> 下一个问题. "}]}
tellraw @a[scores={text=2300}]{"rawtext":[{"text":"<纯绿-滑稽> 问题3:是否添加OB模式? "}]}
tag @a[scores={text=2300}] add question3
execute @a[tag=question3] ~~~ scoreboard players set t text 2305

tellraw @a[scores={text=2600}]{"rawtext":[{"text":"<纯绿-滑稽> ok，正在设置游戏模式...... "}]}
tellraw @a[scores={text=3100}]{"rawtext":[{"text":"<纯绿-滑稽> 设置成功！ "}]}
tellraw @a[scores={text=3300}]{"rawtext":[{"text":"<纯绿-滑稽> 你选择了:"}]}
tellraw @a[tag=ok1,scores={text=3300}]{"rawtext":[{"text":"§bNnE"}]}
tellraw @a[tag=ok2,scores={text=3300}]{"rawtext":[{"text":"§bEB"}]}
tellraw @a[tag=ok3,scores={text=3300}]{"rawtext":[{"text":"§bOB"}]}
tellraw @a[scores={text=3300}]{"rawtext":[{"text":"等模式."}]}

execute @a[scores={text=3500},tag=ok1] ~~~ structure load HCS:NnE 9999 253 -9999
execute @a[scores={text=3500},tag=ok2] ~~~ structure load HCS:EB 9999 252 -9999
execute @a[scores={text=3500},tag=ok3] ~~~ structure load HCS:OB 9999 255 -9999

tellraw @a[scores={text=3500}]{"rawtext":[{"text":"<纯绿-滑稽> Have a good time!"}]}

tag @a[scores={text=3500}] add load3
execute @a[scores={text=3500},tag=ok1] ~~~ setblock 9999 254 -9999 air
