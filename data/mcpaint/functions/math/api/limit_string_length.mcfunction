#####################################################################
# math/api/limit_string_length.mcfunction
# written by Eroxen
#
# Cuts the string if it is longer than 32 characters.
#
# Storage input & output :
# - mcpaint:calc :
#   - math :
#     - string : string
#####################################################################

execute store result score #temp mcpaint.calc run data get storage mcpaint:calc math.string
execute if score #temp mcpaint.calc matches 33.. run data modify storage mcpaint:calc math.string set string storage mcpaint:calc math.string 0 32