from eroxified2:__utils import measure_text_width, text_padding

options = {
  "send_rp_message": "Send resource pack message",
  "protect_studio": "Protect Studio",
  "egg_banter": "Egg banter"
}

function ~/open_menu:
  function mcpaint:settings/api/get_client
  data modify storage mcpaint:calc internal.settings.dialog set value {inputs:[]}
  for option, name in options.items():
    data modify storage mcpaint:calc internal.settings.dialog.inputs append value {type:"minecraft:boolean",key:option,on_true:"2",on_false:"3",label:{"text":name,"extra":[text_padding(150 - measure_text_width(name))]},initial:0b}
    data modify storage mcpaint:calc internal.settings.dialog.inputs[-1].initial set from storage mcpaint:calc f"api.settings.client.{option}"
  function ~/macro with storage mcpaint:calc internal.settings.dialog
  function ~/macro:
    macro_arguments = []
    for option in options:
      macro_arguments.append(f"\\u0024({option})")
    macro_arguments = "".join(macro_arguments)
    command = '$dialog show @s {type:"minecraft:confirmation",title:"Client Config",inputs:$(inputs),yes:{label:{translate:"gui.done"},action:{type:"minecraft:dynamic/run_command",template:"trigger mcpaint.settings set ' + macro_arguments + '"}},no:{label:{translate:"gui.cancel"}}}'
    raw command

function ~/decode:
  function mcpaint:settings/api/get_client
  i = 1
  for option in reversed(options):
    scoreboard players operation #temp mcpaint.calc = @s mcpaint.settings
    scoreboard players set #temp2 mcpaint.calc (i*10)
    scoreboard players operation #temp mcpaint.calc %= #temp2 mcpaint.calc
    scoreboard players set #temp2 mcpaint.calc i
    scoreboard players operation #temp mcpaint.calc /= #temp2 mcpaint.calc
    execute if score #temp mcpaint.calc matches 2 run data modify storage mcpaint:calc f"api.settings.client.{option}" set value 1b
    execute if score #temp mcpaint.calc matches 3 run data modify storage mcpaint:calc f"api.settings.client.{option}" set value 0b
    i *= 10
  function mcpaint:settings/api/set_client
