#####################################################################
# studio/api/player_in_session_tick.mcfunction
# written by Eroxen
#
# Called every tick on a player that is in session with a studio.
#####################################################################

scoreboard players operation #reference mcpaint.session = @s mcpaint.session
execute unless predicate mcpaint:permission/use_studio run return run function mcpaint:studio/internal/session/stop_as_player
scoreboard players set #studio.session.response mcpaint.calc 0
scoreboard players set #studio.session.show_title mcpaint.calc 0
scoreboard players set #studio.session.brush.drop mcpaint.calc 0
scoreboard players set #studio.session.brush.swapOffhand mcpaint.calc 0
execute store success score #studio.session.is_sneaking mcpaint.calc if predicate mcpaint:is_sneaking

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{mcpaint:{brush:1b}}] if items entity @s weapon.offhand *[minecraft:custom_data~{mcpaint:{brush:1b}}] run function mcpaint:studio/internal/session/brush/swap_offhand
execute unless items entity @s weapon.* *[minecraft:custom_data~{mcpaint:{brush:1b}}] anchored eyes positioned ^ ^ ^0.1 as @e[type=item,distance=..1] if items entity @s contents *[minecraft:custom_data~{mcpaint:{brush:1b}}] run function mcpaint:studio/internal/session/brush/drop
execute store success score #studio.session.holding_brush mcpaint.calc if items entity @s weapon.mainhand *[minecraft:custom_data~{mcpaint:{brush:1b}}]

scoreboard players operation #studio.session.using_brush mcpaint.calc = @s mcpaint.using_brush
data modify storage mcpaint:calc macro set value {plane_x_rotation:0f,plane_y_rotation:0f,offset:0f}
data modify storage mcpaint:calc macro.rotation set from entity @s Rotation

execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..16,predicate=mcpaint:same_session,limit=1] run function mcpaint:studio/internal/session/tick_studio_phase_1

execute if score #studio.session.response mcpaint.calc matches 0 run return run function mcpaint:studio/internal/session/stop_as_player

execute if score #studio.session.show_title mcpaint.calc matches 1 run title @s actionbar {"storage":"mcpaint:calc","nbt":"internal.studio.title","interpret":true}
execute if score #studio.session.click mcpaint.calc matches 1 if score #studio.ui_element.focused_child.can_spam_click mcpaint.calc matches 0 if score #studio.ui_element.focused_child.make_sound mcpaint.calc matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1
execute if score #studio.session.click mcpaint.calc matches 1 if score #studio.ui_element.focused_child.can_spam_click mcpaint.calc matches 1 if score #studio.ui_element.focused_child.make_sound mcpaint.calc matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 0.1 2