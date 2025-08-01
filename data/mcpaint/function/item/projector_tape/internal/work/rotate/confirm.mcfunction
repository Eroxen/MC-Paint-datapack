data modify storage mcpaint:calc internal.projector_tape.settings.rotation set from storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation

data modify storage mcpaint:calc internal.macro set value {}
data modify storage eroxified2:api format.input set from storage mcpaint:calc internal.projector_tape.settings.rotation[0]
function eroxified2:format/api/float_2_decimals
data modify storage mcpaint:calc internal.macro.yaw set from storage eroxified2:api format.output
data modify storage eroxified2:api format.input set from storage mcpaint:calc internal.projector_tape.settings.rotation[1]
function eroxified2:format/api/float_2_decimals
data modify storage mcpaint:calc internal.macro.pitch set from storage eroxified2:api format.output
function mcpaint:item/projector_tape/internal/lore/update_rotation with storage mcpaint:calc internal.macro

tellraw @s {"translate": "item.mcpaint.projector_tape.rotation_set", "with": [{"storage": "mcpaint:calc", "nbt": "internal.projector_tape.data.lore.rotation","interpret": true, "color": "gold"}]}
function mcpaint:item/projector_tape/internal/work/confirm