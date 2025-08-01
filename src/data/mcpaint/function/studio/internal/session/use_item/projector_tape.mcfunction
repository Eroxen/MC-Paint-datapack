data modify storage mcpaint:calc internal.studio.data set from entity @n[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..0.1] data
execute unless data storage mcpaint:calc internal.studio.data.filepath run return run tellraw @s {"translate":"mcpaint.error.not_saved_yet"}

data modify storage mcpaint:calc api.projector_tape.filepath set from storage mcpaint:calc internal.studio.data.filepath
execute at @s run function mcpaint:item/projector_tape/api/set_filepath