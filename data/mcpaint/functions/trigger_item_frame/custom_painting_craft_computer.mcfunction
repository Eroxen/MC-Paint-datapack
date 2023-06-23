scoreboard players set override mcpaint.calc 1

data modify storage mcpaint:calc Item set from storage mcpaint:calc item_registry.computer
function mcpaint:item/drop_motion

particle minecraft:block observer ~ ~ ~ 0.3 0.3 0.3 0.3 20
playsound minecraft:block.stone.break block @a[distance=..32] ~ ~ ~ 1 1
particle minecraft:explosion
setblock ~ ~ ~ air
advancement grant @p only mcpaint:guide/craft_computer