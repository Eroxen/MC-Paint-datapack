from eroxified2:__utils import measure_text_width, text_padding

options = [
  "allow_decode"
]

function ~/open_menu:
  data modify storage mcpaint:calc internal.settings.dialog set value {inputs:[]}
  for option in options:
    data modify storage mcpaint:calc internal.settings.dialog.inputs append value {type:"minecraft:boolean",key:option,label:{"translate":f"mcpaint.settings.server.{option}.title","extra":[{text:"\n"},{"translate":f"mcpaint.settings.server.{option}.info",color:"gray",italic:true}]},initial:0b}
    data modify storage mcpaint:calc internal.settings.dialog.inputs[-1].initial set from storage mcpaint:calc f"api.settings.server.{option}"
  function ~/macro with storage mcpaint:calc internal.settings.dialog
  function ~/macro:
    macro_arguments = []
    for option in options:
      macro_arguments.append(f"{option}:\\u0024({option})")
    macro_arguments = ",".join(macro_arguments)
    command = '$dialog show @s {type:"minecraft:confirmation",title:{"translate":"mcpaint.settings.server.header"},inputs:$(inputs),yes:{label:{translate:"gui.done"},action:{type:"minecraft:dynamic/run_command",template:"function mcpaint:settings/internal/server/submit {' + macro_arguments + '}"}},no:{label:{translate:"gui.cancel"}}}'
    raw command

function ~/submit:
  macro_arguments = []
  for option in options:
    macro_arguments.append(f"{option}:$({option})")
  macro_arguments = ",".join(macro_arguments)
  command = f'$data modify storage mcpaint:calc api.settings.server set value {{{macro_arguments}}}'
  raw command
  