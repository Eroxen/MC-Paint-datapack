schedule function mcpaint:clock_1s 1s replace

execute as @a if items entity @s weapon.mainhand *[custom_data~{mcpaint:{projector_tape:1b}}] run function mcpaint:item/projector_tape/api/holding_1s
execute as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session] at @s run function mcpaint:studio/api/studio_in_session_clock