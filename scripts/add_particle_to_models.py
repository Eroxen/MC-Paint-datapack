from glob import glob
import json

for path in glob("src/assets/mcpaint/models/**/*.json", recursive=True):
  with open(path, "r") as file:
    data = json.load(file)
  if "textures" in data and not "particle" in data["textures"]:
    data["textures"]["particle"] = data["textures"][list(data["textures"].keys())[0]]
    with open(path, "w") as file:
      json.dump(data, file, indent=2)