data modify storage mcpaint:calc internal.studio.data.filepath set from entity @s data.filepath
data modify entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.filepath set from storage mcpaint:calc internal.studio.data.filepath
function mcpaint:studio/internal/ui/close
function mcpaint:studio/internal/event/save