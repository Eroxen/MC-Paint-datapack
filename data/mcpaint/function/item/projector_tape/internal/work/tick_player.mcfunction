scoreboard players set #projector_tape.swapped_hands mcpaint.calc 0
execute unless items entity @s weapon.mainhand *[custom_data~{mcpaint:{projector_tape:1b}}] if items entity @s weapon.offhand *[custom_data~{mcpaint:{projector_tape:1b}}] run function mcpaint:item/projector_tape/internal/work/swap_offhand

execute unless items entity @s weapon.mainhand *[custom_data~{mcpaint:{projector_tape:1b}}] run return run function mcpaint:item/projector_tape/internal/work/cancel
function mcpaint:item/projector_tape/internal/work/load_player_data

function mcpaint:item/projector_tape/internal/use/get_item_data

execute if data storage mcpaint:calc internal.projector_tape.player_data.work{task:"move"} run return run function mcpaint:item/projector_tape/internal/work/move/tick
execute if data storage mcpaint:calc internal.projector_tape.player_data.work{task:"rotate"} run return run function mcpaint:item/projector_tape/internal/work/rotate/tick
execute if data storage mcpaint:calc internal.projector_tape.player_data.work{task:"scale"} run return run function mcpaint:item/projector_tape/internal/work/scale/tick