function mcpaint:datafixer/internal/pre_update

execute if score #datafixer.from_version mcpaint.calc matches ..0 run function mcpaint:custom_painting/api/reapply_all_options

function mcpaint:datafixer/internal/post_update