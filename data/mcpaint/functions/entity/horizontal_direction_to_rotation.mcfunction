data modify storage mcpaint:calc Rotation set value [0f,0f]
execute if data storage mcpaint:calc {horizontal_direction:"north"} run data modify storage mcpaint:calc Rotation set value [180f,0f]
execute if data storage mcpaint:calc {horizontal_direction:"east"} run data modify storage mcpaint:calc Rotation set value [-90f,0f]
execute if data storage mcpaint:calc {horizontal_direction:"west"} run data modify storage mcpaint:calc Rotation set value [90f,0f]