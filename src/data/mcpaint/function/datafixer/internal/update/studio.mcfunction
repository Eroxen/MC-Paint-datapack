function mcpaint:datafixer/internal/pre_update

execute if score #datafixer.from_version mcpaint.calc matches ..0 run function mcpaint:studio/api/update_text_display
execute if score #datafixer.from_version mcpaint.calc matches ..1 run function mcpaint:studio/api/update_item_displays

function mcpaint:datafixer/internal/post_update