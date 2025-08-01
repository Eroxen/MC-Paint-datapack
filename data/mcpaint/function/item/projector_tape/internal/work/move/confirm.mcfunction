function mcpaint:item/projector_tape/internal/work/display/get_pos with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity

data modify storage mcpaint:calc internal.macro set value {}
data modify storage eroxified2:api format.input set from storage mcpaint:calc internal.projector_tape.settings.pos[0]
function eroxified2:format/api/float_2_decimals
data modify storage mcpaint:calc internal.macro.x set from storage eroxified2:api format.output
data modify storage eroxified2:api format.input set from storage mcpaint:calc internal.projector_tape.settings.pos[1]
function eroxified2:format/api/float_2_decimals
data modify storage mcpaint:calc internal.macro.y set from storage eroxified2:api format.output
data modify storage eroxified2:api format.input set from storage mcpaint:calc internal.projector_tape.settings.pos[2]
function eroxified2:format/api/float_2_decimals
data modify storage mcpaint:calc internal.macro.z set from storage eroxified2:api format.output
function mcpaint:item/projector_tape/internal/lore/update_position with storage mcpaint:calc internal.macro

tellraw @s {"translate": "item.mcpaint.projector_tape.position_set", "with": [{"storage": "mcpaint:calc", "nbt": "internal.projector_tape.data.lore.position","interpret": true, "color": "gold"}]}
function mcpaint:item/projector_tape/internal/work/confirm