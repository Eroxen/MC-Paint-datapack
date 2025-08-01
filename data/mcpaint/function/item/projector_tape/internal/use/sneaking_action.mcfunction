execute if data storage mcpaint:calc internal.projector_tape.data{mode:"default_interact"} run return run data modify storage mcpaint:calc internal.projector_tape.data.mode set value "move"

execute if data storage mcpaint:calc internal.projector_tape.data{mode:"move"} unless entity @s[tag=mcpaint.player.projector_tape.working] run return run data modify storage mcpaint:calc internal.projector_tape.data.mode set value "rotate"
execute if data storage mcpaint:calc internal.projector_tape.data{mode:"move"} if entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/cancel

execute if data storage mcpaint:calc internal.projector_tape.data{mode:"rotate"} unless entity @s[tag=mcpaint.player.projector_tape.working] run return run data modify storage mcpaint:calc internal.projector_tape.data.mode set value "scale"
execute if data storage mcpaint:calc internal.projector_tape.data{mode:"rotate"} if entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/cancel

execute if data storage mcpaint:calc internal.projector_tape.data{mode:"scale"} unless entity @s[tag=mcpaint.player.projector_tape.working] run return run data modify storage mcpaint:calc internal.projector_tape.data.mode set value "default_interact"
execute if data storage mcpaint:calc internal.projector_tape.data{mode:"scale"} if entity @s[tag=mcpaint.player.projector_tape.working] run return run function mcpaint:item/projector_tape/internal/work/cancel