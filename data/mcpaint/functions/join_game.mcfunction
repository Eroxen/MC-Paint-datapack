scoreboard players set @s mcpaint.leave_game 0
function mcpaint:settings/default_client_settings

tag @s add mcpaint.player.message.credit
tag @s[scores={mcpaint.client_settings.send_rp_message=1}] add mcpaint.player.message.rp