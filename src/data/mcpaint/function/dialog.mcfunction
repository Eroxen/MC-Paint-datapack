from beet import Dialog

ctx.data["mcpaint"].dialogs["report_an_issue"] = Dialog({
  "type": "minecraft:multi_action",
  "title": "Report an Issue",
  "body": [
    {
      "type": "minecraft:plain_message",
      "width": 300,
      "contents": {
        "text": "If you're having issues with the datapack, feel free to reach out! Below is an ",
        "extra": [
          {
            "text":"example message you can fill in", "color": "gold"
          },
          {
            "text": " and copy-paste to help me find the issue quickly."
          }
        ]
      }
    },
    {
      "type": "minecraft:plain_message",
      "width": 300,
      "contents": {
        "text": "Before you do though, be aware that ",
        "extra": [
          {
            "text":"most issues happen because modded servers (e.g. PaperMC) break functionality that datapacks rely on", "color": "gold"
          },
          {
            "text": ". If you are playing on such a server, "
          },
          {
            "text":"try if you can reproduce the issue in Vanilla first.", "color": "gold"
          },
          {
            "text": " If the issue also happens in Vanilla, you can report it."
          }
        ]
      }
    }
  ],
  "inputs": [
    {
      "type": "minecraft:text",
      "key": "",
      "width": 300,
      "label": "issue_template",
      "label_visible": false,
      "initial": f"Hello! I would like to report an issue with MC Paint {ctx.project_version}.\n\nI am playing on:\n- Minecraft <version, e.g. 1.21.6>\n- <singleplayer | a server>\n- <vanilla or modded client>\n- <vanilla or modded server (e.g. PaperMC)>\n\nHere's the issue I'm having:\n- I am trying to ...\n- I would expect to see ...\n- But instead, ...",
      "max_length": 10000,
      "multiline": {
        "height": 150
      }
    }
  ],
  "actions": [
    {
      "label": "Discord Server",
      "tooltip": "Clicking this button will close this dialog, so make sure to copy the issue template first!",
      "action": {
        "type": "minecraft:open_url",
        "url": "https://discord.gg/p6jh5j2fY3"
      }
    },
    {
      "label": "GitHub Issues",
      "tooltip": "Clicking this button will close this dialog, so make sure to copy the issue template first!",
      "action": {
        "type": "minecraft:open_url",
        "url": "https://github.com/Eroxen/MC-Paint-datapack/issues"
      }
    }
  ]
})