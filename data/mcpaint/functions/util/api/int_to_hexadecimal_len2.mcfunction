#####################################################################
# util/api/int_to_hexadecimal_len2.mcfunction
# written by Eroxen
#
# Converts an integer to a hexadecimal string of length 2.
#
# Storage input:
# - mcpaint:calc api.util.int: int in range [0,256)
#
# Storage output :
# - mcpaint:calc api.util.hex: string of length 2
#####################################################################

function mcpaint:util/internal/int_to_hexadecimal_len2 with storage mcpaint:calc api.util