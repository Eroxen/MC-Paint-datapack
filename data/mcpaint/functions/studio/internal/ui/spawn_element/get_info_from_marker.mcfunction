data modify storage mcpaint:calc internal.studio.data set from entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data
execute store result score #studio.width mcpaint.calc run data get storage mcpaint:calc internal.studio.data.width 1
execute store result score #studio.height mcpaint.calc run data get storage mcpaint:calc internal.studio.data.height 1
