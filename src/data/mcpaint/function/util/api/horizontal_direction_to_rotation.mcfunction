data modify storage mcpaint:calc api.util.rotation set value [0f,0f]
execute if data storage mcpaint:calc api.util{horizontal_direction:"north"} run data modify storage mcpaint:calc api.util.rotation set value [180f,0f]
execute if data storage mcpaint:calc api.util{horizontal_direction:"east"} run data modify storage mcpaint:calc api.util.rotation set value [-90f,0f]
execute if data storage mcpaint:calc api.util{horizontal_direction:"west"} run data modify storage mcpaint:calc api.util.rotation set value [90f,0f]