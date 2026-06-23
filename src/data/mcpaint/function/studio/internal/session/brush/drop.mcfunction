execute store success score #studio.hand_full mcpaint.calc if items entity @p[predicate=mcpaint:same_session] weapon.mainhand *
execute if score #studio.hand_full mcpaint.calc matches 0 run item replace entity @p[predicate=mcpaint:same_session] weapon.mainhand from entity @s contents
execute if score #studio.hand_full mcpaint.calc matches 1:
  with entity @s Item:
    $loot give @p[predicate=mcpaint:same_session] loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"mcpaint:item/brush",functions:[{function:"minecraft:set_components",components:$(components)}]}]}]}
kill @s
scoreboard players set #studio.session.brush.drop mcpaint.calc 1