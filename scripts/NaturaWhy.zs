print("SCRIPT: Natura Why");

furnace.setFuel(<Natura:natura.stick:*>, 100);
recipes.addShaped(<minecraft:torch> * 4, [[<minecraft:coal:*>], [<ore:stickWood>]]);
furnace.addRecipe(<minecraft:coal:1>, <Natura:Rare Tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:willow>);

val planks = <Natura:planks:*>;
val sticks = <Natura:natura.stick:*>;
<ore:stickWood>.add(sticks);
<ore:plankWood>.add(planks);

recipes.removeShaped(<minecraft:string>);
recipes.removeShapeless(<minecraft:string>, [<ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]); // remove string * 2
recipes.addShapeless(<minecraft:string>, [<ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]); // add string * 1 as shapeless recipe instead of shaped
