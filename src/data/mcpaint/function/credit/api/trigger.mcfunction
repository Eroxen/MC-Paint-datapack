#####################################################################
# credit/api/trigger.mcfunction
# written by Eroxen
#
# Shows the contributers credits in chat.
#####################################################################

scoreboard players reset @s mcpaint.credits
scoreboard players enable @s mcpaint.credits
function mcpaint:credit/api/send_contributors_message