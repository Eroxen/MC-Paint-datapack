function mcpaint:datafixer/internal/pre_update

execute if score #datafixer.from_version mcpaint.calc matches ..0 run function mcpaint:studio/api/update_text_display

function mcpaint:datafixer/internal/post_update