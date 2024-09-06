advancement revoke @s only mcpaint:trigger/using_brush
execute unless score @s mcpaint.using_brush matches 1.. run return run scoreboard players set @s mcpaint.using_brush 4
scoreboard players set @s mcpaint.using_brush 3