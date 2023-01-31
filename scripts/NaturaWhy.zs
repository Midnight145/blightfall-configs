furnace.setFuel(<Natura:natura.stick:*>, 100);
recipes.addShaped(<minecraft:torch> * 4, [[<minecraft:coal:*>], [<ore:stickWood>]]);
furnace.addRecipe(<minecraft:coal:1>, <Natura:Rare Tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:willow>);

mods.thermalexpansion.Sawmill.removeRecipe(<Natura:Rare Tree:2>);
mods.thermalexpansion.Sawmill.addRecipe(800, <Natura:Rare Tree:2>, <Natura:planks:8> * 6);