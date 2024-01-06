import minetweaker.item.IItemStack;

print("SCRIPT: Fucking Metals");

                   //////////
                   //COPPER//
                   //////////

val copperIngot = <ThermalFoundation:material:64>;
val copperIngotDict = <ore:ingotCopper>;
val copperDustDict = <ore:dustCopper>;
val copperOreDict = <ore:oreCopper>;
val copperBlock = <ThermalFoundation:Storage:0>;

//with TiC removed, TiC copper ingots now automatically go to TC instead
recipes.remove(<TConstruct:materials:20> * 9);

//Replace a bunch of vanilla smelting recipes
furnace.remove(copperIngotDict);
furnace.addRecipe(copperIngot * 2, <Thaumcraft:ItemNugget:17>, 0.5); //Ore cluster
furnace.addRecipe(copperIngot, copperDustDict);
furnace.addRecipe(copperIngot, copperOreDict);

//Change metallurgy brick recipe:
recipes.remove(<Metallurgy:base.brick>);
recipes.addShaped(<Metallurgy:base.brick>, [[copperIngotDict, copperIngotDict], [copperIngotDict, copperIngotDict]]);

// Change smeltery casting to Thermal copper
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:9>);
mods.tconstruct.Casting.addTableRecipe(copperIngot, <liquid:copper.molten> * 144, <TConstruct:metalPattern> * 1, false, 20);
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:3>);
mods.tconstruct.Casting.addBasinRecipe(copperBlock, <liquid:copper.molten> * 1296, null, false, 20);


                   ///////
                   //TIN//
                   ///////

val tinIngot = <ThermalFoundation:material:65>;
val tinIngotDict = <ore:ingotTin>;
val tinDustDict = <ore:dustTin>;
val tinOreDict = <ore:oreTin>;
val tinBlock = <ThermalFoundation:Storage:1>;

//with TiC removed, TiC tin ingots now automatically go to TC instead
recipes.remove(<TConstruct:materials:21> * 9);

//Replace a bunch of vanilla smelting recipes
furnace.remove(tinIngotDict);
furnace.addRecipe(tinIngot * 2, <Thaumcraft:ItemNugget:18>, 0.5); //Ore cluster
furnace.addRecipe(tinIngot, tinDustDict);
furnace.addRecipe(tinIngot, tinOreDict);

// Change smeltery casting to Thermal tin
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:10>);
mods.tconstruct.Casting.addTableRecipe(tinIngot, <liquid:tin.molten> * 144, <TConstruct:metalPattern> * 1, false, 20);
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:5>);
mods.tconstruct.Casting.addBasinRecipe(tinBlock, <liquid:tin.molten> * 1296, null, false, 20);


                   ////////
                   //IRON//
                   ////////

//with TiC removed, iron ingots now automatically go to TC instead
recipes.remove(<TConstruct:materials:19> * 9);


                   //////////
                   //BRONZE//
                   //////////

val bronzeIngot = <TConstruct:materials:13>;
val bronzeNuggetDict = <ore:nuggetBronze>;

//with TiC removed, TiC bronze ingots now automatically go to TF instead
recipes.remove(<TConstruct:materials:31> * 9);

recipes.remove(<ThermalFoundation:material:73>);
recipes.addShaped(bronzeIngot, [[bronzeNuggetDict, bronzeNuggetDict, bronzeNuggetDict], 
[bronzeNuggetDict, bronzeNuggetDict, bronzeNuggetDict], [bronzeNuggetDict, bronzeNuggetDict, bronzeNuggetDict]]);

furnace.remove(<ore:ingotBronze>);
furnace.addRecipe(bronzeIngot, <ThermalFoundation:material:41>, 0.5);


                   ////////////////
                   //OTHER METALS//
                   ////////////////
// taken from hello (1).zs, because, you know, it's about metals
// -------------------------------------------------------------

//Fix platinum ore into shiny ingots
furnace.remove(<Metallurgy:platinum.ingot>);
furnace.addRecipe(<ThermalFoundation:material:69>, <Metallurgy:precious.ore:2>, 0.5);

//Fix silver ore into TF silver ingots
furnace.remove(<Metallurgy:silver.ingot>);
furnace.addRecipe(<ThermalFoundation:material:66>, <Metallurgy:precious.ore:1>, 0.5);

//For mithril (mana-infused) make mithril ore turn into mana-infused ingots
furnace.remove(<Metallurgy:mithril.ingot>);
furnace.addRecipe(<ThermalFoundation:material:70>, <Metallurgy:fantasy.ore:7>, 0.5);

//...and then rename mana-infused ingots, dust, nuggets, and blocks into mithril versions
game.setLocalization("en_US", "tile.thermalfoundation.ore.mithril.name", "Mithril Ore");
game.setLocalization("en_US", "item.thermalfoundation.material.ingotMithril.name", "Mithril Ingot");
game.setLocalization("en_US", "item.thermalfoundation.material.dustMithril.name", "Pulverized Mithril");
game.setLocalization("en_US", "item.thermalfoundation.material.nuggetMithril.name", "Mithril Nugget");
game.setLocalization("en_US", "tile.thermalfoundation.storage.mithril.name", "Mithril Block");
game.setLocalization("en_US", "item.thermalfoundation.material.gearMithril.name", "Mithril Gear");

//do German cause I'm editing so I can do what I want lol
game.setLocalization("de_DE", "tile.thermalfoundation.ore.mithril.name", "Mithrilerz");
game.setLocalization("de_DE", "item.thermalfoundation.material.ingotMithril.name", "Mithrilbarren");
game.setLocalization("de_DE", "item.thermalfoundation.material.dustMithril.name", "Mithrilpulver");
game.setLocalization("de_DE", "item.thermalfoundation.material.nuggetMithril.name", "Mithrilklumpen");
game.setLocalization("de_DE", "tile.thermalfoundation.storage.mithril.name", "Mithrilblock");
game.setLocalization("de_DE", "item.thermalfoundation.material.gearMithril.name", "Mithrilzahnrad");
