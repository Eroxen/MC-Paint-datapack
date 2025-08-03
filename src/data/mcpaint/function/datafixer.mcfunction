DATA_VERSION_WORK = 1
DATA_VERSION_BLOCK = 3
from eroxified2:datafixer import run_on_clock_player, run_inventory_fixer

function ~/clock:
  run_on_clock_player()
  run_inventory_fixer({
    "condition": "minecraft:all_of",
    "terms": [
      {
        "condition": "minecraft:entity_properties",
        "entity": "this",
        "predicate": {
          "slots": {
            "contents": {
              "predicates": {
                "minecraft:custom_data": {
                  "mcpaint": {}
                }
              }
            }
          }
        }
      },
      {
        "condition": "minecraft:inverted",
        "term": {
          "condition": "minecraft:entity_properties",
          "entity": "this",
          "predicate": {
            "slots": {
              "contents": {
                "predicates": {
                  "minecraft:custom_data": "{eroxified2:{datafixer:{version:1}}}"
                }
              }
            }
          }
        }
      }
    ]
  }, ~/../internal/update_inventory, "MC Paint")
  DIST = 64
  execute as @e[type=interaction,tag=mcpaint.paint_bucket.interaction,distance=f"..{DIST}",predicate=mcpaint:datafixer/outdated,limit=16,sort=nearest] at @s run function mcpaint:datafixer/internal/update/paint_bucket
  execute as @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=f"..{DIST}",predicate=mcpaint:datafixer/outdated,limit=16,sort=nearest] at @s run function mcpaint:datafixer/internal/update/custom_painting
  execute as @e[type=marker,tag=mcpaint.studio.marker,distance=f"..{DIST}",predicate=mcpaint:datafixer/outdated,limit=1,sort=nearest] at @s run function mcpaint:datafixer/internal/update/studio

predicate ~/outdated {
  "condition": "inverted",
  "term": {
    "condition": "value_check",
    "range": {
      "min": DATA_VERSION_BLOCK
    },
    "value": {
      "score": "eroxified2.datafixer_version",
      "target": {
        "target": "this",
        "type": "context"
      },
      "type": "score"
    }
  }
}

function ~/api:
  function ~/load_work:
    """
    Called when the database loads a work.
    """
    scoreboard players set #database.updated mcpaint.calc 0
    execute store result score #datafixer.data_version mcpaint.calc run data get storage mcpaint:calc api.database.work.data_version 1
    #tellraw @a {"text":"current data version: ","extra":[{"score":{"name":"#datafixer.data_version","objective":"mcpaint.calc"}}]}
    lower = DATA_VERSION_WORK - 1
    execute if score #datafixer.data_version mcpaint.calc matches f"..{lower}":
      data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
      function mcpaint:canvas/api/compile_grid
      data modify storage mcpaint:calc api.database.work.canvas set from storage mcpaint:calc api.canvas.canvas
      data modify storage mcpaint:calc api.database.work.data_version set value DATA_VERSION_WORK
      data remove storage mcpaint:calc api.database.work.cached_data
      scoreboard players set #database.updated mcpaint.calc 1

  function ~/set_new_work_version:
    """
    Called when the database creates a new work.
    """
    command = '$data modify storage mcpaint:database authors[{UUID:$(author)}].works[{name:"$(name)"}].data_version set value ' + str(DATA_VERSION_WORK)
    raw command
  
  function ~/new:
    """
    Called on a new entity.
    """
    scoreboard players set @s eroxified2.datafixer_version DATA_VERSION_BLOCK

function ~/internal:
  function ~/update_inventory:
    data modify storage mcpaint:calc internal.datafixer.old_item set from entity @s item

    execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{paint_bucket:1b}}"}}}}} run function mcpaint:datafixer/internal/update/item/paint_bucket:
      data modify storage mcpaint:calc internal.datafixer.old_item set from entity @s item
      loot replace entity @s contents loot mcpaint:item/paint_bucket
      data modify entity @s item.count set from storage mcpaint:calc internal.datafixer.old_item.count
      data modify entity @s item.components.minecraft:potion_contents.custom_color set from storage mcpaint:calc internal.datafixer.old_item.components.minecraft:potion_contents.custom_color

    execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{custom_painting:1b}}"}}}}} \
    run function mcpaint:datafixer/internal/update/item/custom_painting
    execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{custom_painting:1b}}"}}}}} \
    if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{trigger_item_frame:1b}}"}}}}} \
    if data entity @s item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint{trigger:"custom_painting"} \
    run function mcpaint:datafixer/internal/update/item/custom_painting:
      function mcpaint:custom_painting/api/insert_contents with storage mcpaint:calc internal.datafixer.old_item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting.filepath

    execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{studio:1b}}"}}}}} \
    run loot replace entity @s contents loot mcpaint:item/studio
    execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{studio:1b}}"}}}}} \
    if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{trigger_item_frame:1b}}"}}}}} \
    if data entity @s item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint{trigger:"studio"} \
    run loot replace entity @s contents loot mcpaint:item/studio

    execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{brush:1b}}"}}}}} \
    run loot replace entity @s contents loot mcpaint:item/brush

    data modify entity @s item.count set from storage mcpaint:calc internal.datafixer.old_item.count
    execute if data storage mcpaint:calc internal.datafixer.old_item.components.minecraft:custom_name run data modify entity @s item.components.minecraft:custom_name set from storage mcpaint:calc internal.datafixer.old_item.components.minecraft:custom_name

  function ~/pre_update:
    scoreboard players set #datafixer.from_version mcpaint.calc 0
    scoreboard players operation #datafixer.from_version mcpaint.calc = @s eroxified2.datafixer_version
  function ~/post_update:
    scoreboard players set @s eroxified2.datafixer_version DATA_VERSION_BLOCK
  function ~/update:
    function ~/studio:
      function mcpaint:datafixer/internal/pre_update
      execute if score #datafixer.from_version mcpaint.calc matches ..0 run function mcpaint:studio/api/update_text_display
      execute if score #datafixer.from_version mcpaint.calc matches ..1 run function mcpaint:studio/api/update_item_displays
      execute if score #datafixer.from_version mcpaint.calc matches ..2 run function mcpaint:studio/api/update_recompile_canvas
      function mcpaint:datafixer/internal/post_update
    function ~/custom_painting:
      function mcpaint:datafixer/internal/pre_update
      execute if score #datafixer.from_version mcpaint.calc matches ..2 run function mcpaint:custom_painting/api/reapply_all_options
      function mcpaint:datafixer/internal/post_update
    function ~/paint_bucket:
      function mcpaint:datafixer/internal/pre_update
      execute if score #datafixer.from_version mcpaint.calc matches ..0 on passengers if entity @s[type=item_display]:
        data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
        data remove entity @s item.components."minecraft:custom_model_data"
        data modify entity @s item.components."minecraft:item_model" set value "mcpaint:paint_bucket/ground"
      function mcpaint:datafixer/internal/post_update