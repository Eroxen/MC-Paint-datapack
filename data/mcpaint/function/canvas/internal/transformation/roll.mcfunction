execute store result score #canvas.get_transformation.roll mcpaint.calc run data get storage mcpaint:calc api.canvas.get_transformation.roll 10
scoreboard players set #temp mcpaint.calc 3600
scoreboard players operation #canvas.get_transformation.roll mcpaint.calc %= #temp mcpaint.calc


### rotations of 90 degrees ###
execute if score #canvas.get_transformation.roll mcpaint.calc matches 0 run return 0

# execute if score #canvas.get_transformation.roll mcpaint.calc matches 90 run scoreboard players operation #temp mcpaint.calc = #canvas.get_transformation.offset.x mcpaint.calc
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 90 run scoreboard players operation #canvas.get_transformation.offset.x mcpaint.calc = #canvas.get_transformation.offset.y mcpaint.calc
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 90 run scoreboard players set #canvas.get_transformation.offset.y mcpaint.calc 0
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 90 run return run scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc -= #temp mcpaint.calc

# execute if score #canvas.get_transformation.roll mcpaint.calc matches 180 run scoreboard players operation #canvas.get_transformation.offset.x mcpaint.calc *= #const.-1 mcpaint.calc
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 180 run return run scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc *= #const.-1 mcpaint.calc

# execute if score #canvas.get_transformation.roll mcpaint.calc matches 270 run scoreboard players operation #temp mcpaint.calc = #canvas.get_transformation.offset.y mcpaint.calc
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 270 run scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc = #canvas.get_transformation.offset.x mcpaint.calc
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 270 run scoreboard players set #canvas.get_transformation.offset.x mcpaint.calc 0
# execute if score #canvas.get_transformation.roll mcpaint.calc matches 270 run return run scoreboard players operation #canvas.get_transformation.offset.x mcpaint.calc -= #temp mcpaint.calc

### other rotations ###
data modify storage eroxified2:api entity.rotation_to_pos set value {distance:1f,rotation:[0f,0f]}
execute store result storage eroxified2:api entity.rotation_to_pos.rotation[0] float 0.1 run scoreboard players get #canvas.get_transformation.roll mcpaint.calc
function eroxified2:entity/api/rotation_to_pos

execute store result score #canvas.get_transformation.new_y mcpaint.calc run data get storage eroxified2:api entity.pos[0] 1000
scoreboard players operation #canvas.get_transformation.new_y mcpaint.calc *= #canvas.get_transformation.offset.x mcpaint.calc
execute store result score #temp mcpaint.calc run data get storage eroxified2:api entity.pos[2] 1000
scoreboard players operation #temp mcpaint.calc *= #canvas.get_transformation.offset.y mcpaint.calc
scoreboard players operation #canvas.get_transformation.new_y mcpaint.calc += #temp mcpaint.calc
scoreboard players operation #canvas.get_transformation.new_y mcpaint.calc /= #const.1000 mcpaint.calc

execute store result score #canvas.get_transformation.new_x mcpaint.calc run data get storage eroxified2:api entity.pos[2] 1000
scoreboard players operation #canvas.get_transformation.new_x mcpaint.calc *= #canvas.get_transformation.offset.x mcpaint.calc
execute store result score #temp mcpaint.calc run data get storage eroxified2:api entity.pos[0] -1000
scoreboard players operation #temp mcpaint.calc *= #canvas.get_transformation.offset.y mcpaint.calc
scoreboard players operation #canvas.get_transformation.new_x mcpaint.calc += #temp mcpaint.calc
scoreboard players operation #canvas.get_transformation.new_x mcpaint.calc /= #const.1000 mcpaint.calc


scoreboard players operation #canvas.get_transformation.offset.x mcpaint.calc = #canvas.get_transformation.new_x mcpaint.calc
scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc = #canvas.get_transformation.new_y mcpaint.calc