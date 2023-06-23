data modify storage mcpaint:calc popup set value {type:"new_file",filename:"unnamed",width_blocks:1,height_blocks:1,width_px:16,height_px:16,position:[-500,-300],size:[2000,1800]}
function mcpaint:studio/popup/offset

execute unless data entity @s data.popups run data modify entity @s data.popups set value []
data modify entity @s data.popups prepend from storage mcpaint:calc popup

function mcpaint:studio/popup/rerender