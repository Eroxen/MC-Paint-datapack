execute on vehicle on vehicle unless data entity @s data.painting run return:
  execute on passengers on passengers if entity @s[type=interaction] on attacker if predicate mcpaint:survival_or_adventure run loot spawn ~ ~ ~ loot mcpaint:item/easel
  function eroxified2:entity/api/kill_stack
  playsound minecraft:entity.armor_stand.break block @a[distance=..16]
  particle minecraft:block{block_state:{Name:"oak_planks"}} ~ ~1 ~ 0.3 0.5 0.3 0 10

execute on vehicle on vehicle if data entity @s data.painting run return:
  with entity @s equipment.feet:
    $loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"mcpaint:item/custom_painting",functions:[{function:"minecraft:set_components",components:$(components)}]}]}]}
  item replace entity @s armor.feet with air
  data remove entity @s data.painting
  execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_background] run item replace entity @s contents with air
  execute on passengers on passengers if entity @s[tag=mcpaint.easel.painting_ink] run data modify entity @s text set value ""
  playsound minecraft:entity.item_frame.remove_item block @a[distance=..16]