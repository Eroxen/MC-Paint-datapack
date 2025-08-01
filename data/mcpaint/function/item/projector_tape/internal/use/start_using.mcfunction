scoreboard players set @s mcpaint.using_projector_tape 4
execute unless items entity @s weapon.mainhand *[custom_data~{mcpaint:{projector_tape:1b}}] run return fail
function mcpaint:item/projector_tape/internal/use/get_item_data

execute if predicate mcpaint:is_sneaking run return run function mcpaint:item/projector_tape/internal/use/while_sneaking


execute if data storage mcpaint:calc internal.projector_tape.data{mode:"move"} unless entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/move/start
execute if data storage mcpaint:calc internal.projector_tape.data{mode:"move"} if entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/move/confirm

execute if data storage mcpaint:calc internal.projector_tape.data{mode:"rotate"} unless entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/rotate/start
execute if data storage mcpaint:calc internal.projector_tape.data{mode:"rotate"} if entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/rotate/confirm

execute if data storage mcpaint:calc internal.projector_tape.data{mode:"scale"} unless entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/scale/start
execute if data storage mcpaint:calc internal.projector_tape.data{mode:"scale"} if entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/scale/confirm