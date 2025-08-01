advancement revoke @s only mcpaint:trigger/using_projector_tape
execute unless score @s mcpaint.using_projector_tape matches 1.. run return run function mcpaint:item/projector_tape/internal/use/start_using
scoreboard players set @s mcpaint.using_projector_tape 3