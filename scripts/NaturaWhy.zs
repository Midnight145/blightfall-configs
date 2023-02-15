furnace.setFuel(<Natura:natura.stick:*>, 100);
recipes.addShaped(<minecraft:torch> * 4, [[<minecraft:coal:*>], [<ore:stickWood>]]);
furnace.addRecipe(<minecraft:coal:1>, <Natura:Rare Tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:tree:*>);
furnace.addRecipe(<minecraft:coal:1>, <Natura:willow>);

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
recipes.addShaped(<minecraft:wooden_slab:0> * 6, [[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>]]);
recipes.addShaped(<minecraft:wooden_pressure_plate:0>, [[<minecraft:planks:0>, <minecraft:planks:0>]]);
recipes.addShaped(<minecraft:crafting_table>, [[<minecraft:planks:0>, <minecraft:planks:0>], [<minecraft:planks:0>, <minecraft:planks:0>]]);
recipes.addShaped(<minecraft:wooden_button>, [[<minecraft:planks:0>]]);
recipes.addShaped(<minecraft:bookshelf> * 3, [[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>], [<minecraft:book>, <minecraft:book>, <minecraft:book>], [<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>]]);
recipes.addShaped(<minecraft:wooden_door> * 3, [[<minecraft:planks:0>, <minecraft:planks:0>], [<minecraft:planks:0>, <minecraft:planks:0>], [<minecraft:planks:0>, <minecraft:planks:0>]]);
recipes.addShaped(<minecraft:trapdoor> * 2, [[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>], [<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>]]);
recipes.addShaped(<minecraft:fence_gate>, [[<ore:stickWood>, <minecraft:planks:0>, <ore:stickWood>], [<ore:stickWood>, <minecraft:planks:0>, <ore:stickWood>]]);
recipes.addShaped(<minecraft:stick> * 4, [[<minecraft:planks:0>], [<minecraft:planks:0>]]);

val seeds = <ore:listAllseed>;
seeds.add(<Natura:barley.seed:0>);
seeds.add(<Natura:barley.seed:1>);

val planks = <ore:plankWood>;
planks.remove(<Natura:planks:4>); // bloodwood
planks.remove(<Natura:planks:2>); // ghostwood
planks.remove(<Natura:planks:11>); // darkwood
planks.remove(<Natura:planks:12>); // fusewood

val sticks = <ore:stickWood>;
sticks.remove(<Natura:natura.stick:4>); // bloodwood
sticks.remove(<Natura:natura.stick:2>); // ghostwood
sticks.remove(<Natura:natura.stick:11>); // darkwood
sticks.remove(<Natura:natura.stick:12>); // fusewood

val logs = <ore:logWood>;
logs.remove(<Natura:Dark Tree:0>); // darkwood
logs.remove(<Natura:Dark Tree:1>); // fusewood
logs.remove(<Natura:tree:2>); // ghostwood