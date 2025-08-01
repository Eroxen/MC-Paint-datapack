scoreboard players set #temp mcpaint.calc 0
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc internal.projector_tape.player_data.settings.snap_scale 8
execute if score #temp mcpaint.calc matches 0 run scoreboard players set #temp mcpaint.calc 16
scoreboard players operation #temp mcpaint.calc /= #const.2 mcpaint.calc
execute store result storage mcpaint:calc internal.projector_tape.player_data.settings.snap_scale float 0.125 run scoreboard players get #temp mcpaint.calc

data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_scale set from storage mcpaint:calc internal.projector_tape.player_data.settings.snap_scale

function mcpaint:item/projector_tape/internal/use/show_actionbar