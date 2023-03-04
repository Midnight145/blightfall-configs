furnace.setFuel(<Natura:natura.stick:*>, 100);
recipes.addShaped(<minecraft:torch> * 4, [[<minecraft:coal:*>], [<ore:stickWood>]]);
furnace.addRecipe(<minecraft:coal:1>, <Natura:Rare Tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:willow>);

val planks = <Natura:planks:*>;
val sticks = <Natura:natura.stick:*>;
<ore:stickWood>.add(sticks);
<ore:plankWood>.add(planks);