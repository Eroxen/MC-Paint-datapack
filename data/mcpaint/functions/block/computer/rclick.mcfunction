execute unless predicate mcpaint:can_use_computer run return 0

data modify storage mcpaint:calc EntityData set from entity @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] {}
execute store success score active_popup mcpaint.calc if data storage mcpaint:calc EntityData.data.popup

data modify storage mcpaint:calc math.intersect_plane set value {plane:{normal:{axis:"x",sign:1},offset:0.5f}}
execute if score active_popup mcpaint.calc matches 1 run data modify storage mcpaint:calc math.intersect_plane.plane.offset set value 0.525f
data modify storage mcpaint:calc math.intersect_plane.plane.origin set from storage mcpaint:calc EntityData.Pos
execute if data storage mcpaint:calc EntityData.data{facing:"north"} run data modify storage mcpaint:calc math.intersect_plane.plane.normal set value {axis:"z",sign:-1}
execute if data storage mcpaint:calc EntityData.data{facing:"south"} run data modify storage mcpaint:calc math.intersect_plane.plane.normal set value {axis:"z",sign:1}
execute if data storage mcpaint:calc EntityData.data{facing:"west"} run data modify storage mcpaint:calc math.intersect_plane.plane.normal set value {axis:"x",sign:-1}
execute at @s anchored eyes positioned ^ ^ ^ run function mcpaint:math/api/intersect_plane

execute if score active_popup mcpaint.calc matches 0 if score distance mcpaint.calc matches 0.. if score screenspace_x mcpaint.calc matches -500..500 if score screenspace_y mcpaint.calc matches -500..500 run function mcpaint:block/computer/rclick_screen
execute if score active_popup mcpaint.calc matches 1 if score distance mcpaint.calc matches 0.. if score screenspace_x mcpaint.calc matches -500..500 if score screenspace_y mcpaint.calc matches -500..500 run function mcpaint:block/computer/rclick_popup