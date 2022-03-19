execute @a ~~~ tellraw @a{"rawtext":[{"text":"<"},{"selector":"@s"},{"text":"> Yes."}]}
tag @a[tag=question1] add ok1
tag @a[tag=ok1] remove question1
tag @a[tag=question2] add ok2
tag @a[tag=ok2] remove question2
tag @a[tag=question3] add ok3
tag @a[tag=ok3] remove question3