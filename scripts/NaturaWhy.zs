furnace.setFuel(<Natura:natura.stick:*>, 100);
recipes.addShaped(<minecraft:torch> * 4, [[<minecraft:coal:*>], [<ore:stickWood>]]);
furnace.addRecipe(<minecraft:coal:1>, <Natura:Rare Tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:willow>);

mods.thermalexpansion.Sawmill.removeRecipe(<Natura:Rare Tree:2>);
mods.thermalexpansion.Sawmill.addRecipe(800, <Natura:Rare Tree:2>, <Natura:planks:8> * 6);

val naturaPlanks = <Natura:planks:*>;
for plank in naturaPlanks.items {
    recipes.removeShaped(<minecraft:wooden_slab:0>, [[plank, plank, plank]]);
    recipes.removeShaped(<minecraft:wooden_pressure_plate:0>, [[plank, plank]]);
    recipes.removeShaped(<minecraft:crafting_table>, [[plank, plank], [plank, plank]]);
    recipes.removeShaped(<minecraft:wooden_button>, [[plank]]);
    recipes.removeShaped(<minecraft:bookshelf>, [[plank, plank, plank], [<minecraft:book>, <minecraft:book>, <minecraft:book>], [plank, plank, plank]]);
    recipes.removeShaped(<minecraft:wooden_door>, [[plank, plank], [plank, plank], [plank, plank]]);
    recipes.removeShaped(<minecraft:trapdoor>, [[plank, plank, plank], [plank, plank, plank]]);
    recipes.removeShaped(<minecraft:fence_gate>, [[<ore:stickWood>, plank, <ore:stickWood>], [<ore:stickWood>, plank, <ore:stickWood>]]);
    recipes.removeShaped(<minecraft:stick>, [[plank], [plank]]);
}

val seeds = <ore:listAllseed>;
seeds.add(<Natura:barley.seed:0>);
seeds.add(<Natura:barley.seed:1>);