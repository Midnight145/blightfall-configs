//Minetweaker recipes and changes

import mods.nei.NEI;

//Add recipe for the Quest book
recipes.addShapeless(<HardcoreQuesting:quest_book>, [<minecraft:coal:*>, <TConstruct:blankPattern>]);

//Disable recipes for...
//vanilla weapons and tools (stone, gold, diamond, wood, iron)
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:stone_hoe>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:stone_sword>);

recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:golden_hoe>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:golden_sword>);

recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_sword>);

recipes.remove(<minecraft:wooden_axe>);
recipes.remove(<minecraft:wooden_hoe>);
recipes.remove(<minecraft:wooden_pickaxe>);
recipes.remove(<minecraft:wooden_shovel>);
recipes.remove(<minecraft:wooden_sword>);

recipes.remove(<minecraft:iron_axe>);
recipes.remove(<minecraft:iron_hoe>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_shovel>);
recipes.remove(<minecraft:iron_sword>);


//portal to the deep dark
recipes.remove(<ExtraUtilities:dark_portal>);

//bioreactor and biofuel generator from MFR
recipes.remove(<MineFactoryReloaded:machine.1:10>);
recipes.remove(<MineFactoryReloaded:machine.1:11>);

//all dynamos
recipes.remove(<ThermalExpansion:Dynamo:*>);

//any other forms of power generation besides Big Reactors? 
//Besides the AE vibration chamber and the opencomputers robot generators, which we decided were fine, I don't see any.


//Change the diamond armor to be made from cobalt and rename it
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

val cobalt = (<TConstruct:materials:3>);
recipes.addShaped(<minecraft:diamond_helmet>, [[cobalt, cobalt, cobalt], [cobalt, null, cobalt]]);
recipes.addShaped(<minecraft:diamond_chestplate>, [[cobalt, null, cobalt], [cobalt, cobalt, cobalt], [cobalt, cobalt, cobalt]]);
recipes.addShaped(<minecraft:diamond_leggings>, [[cobalt, cobalt, cobalt], [cobalt, null, cobalt], [cobalt, null, cobalt]]);
recipes.addShaped(<minecraft:diamond_boots>, [[null, null, null], [cobalt, null, cobalt], [cobalt, null, cobalt]]);

<minecraft:diamond_helmet>.displayName = "Cobalt Helmet";
<minecraft:diamond_chestplate>.displayName = "Cobalt Chestplate";
<minecraft:diamond_leggings>.displayName = "Cobalt Leggings";
<minecraft:diamond_boots>.displayName = "Cobalt Boots";


//Add bitumen x8 to rubber recipe
val bitumen = <Metallurgy:utility.item:4>;
recipes.addShapeless(<MineFactoryReloaded:rubber.raw>, [bitumen, bitumen, bitumen, bitumen, bitumen, bitumen, bitumen, bitumen]);

//Metals 
//(Rather than making every possibility go to the desired result, I'm choosing a desired result and then assuming that's all they'll have)

//Nugget conflicts
//No need to make casting table nuggets of iron, tin, copper, silver, and lead go to TC nuggets (it's already doing that)
//Make iron, tin, copper, silver, and lead ingots go to TC nuggets
recipes.remove(<TConstruct:materials:19>*9); //with TiC removed, iron ingots now automatically go to TC instead
recipes.remove(<TConstruct:materials:21>*9); //with TiC removed, TiC tin ingots now automatically go to TC instead
recipes.remove(<TConstruct:materials:20>*9); //with TiC removed, TiC copper ingots now automatically go to TC instead
//Thermal Foundation silver ingots already go to TC
//Thermal Foundation lead ingots already go to TC
//Make bronze ingots craft to TF nuggets because that's the casting recipe
recipes.remove(<TConstruct:materials:31>*9); //with TiC removed, TiC bronze ingots now automatically go to TF instead
//Gold nuggets are fine because they exist in vanilla
//Platinum ore will make shiny ingots, which will already create shiny nuggets

//Dust conflicts
//No need to make bronze (tinker's alloy), platinum, gold, iron, copper, tin, lead, and silver go to TF in metallurgy crusher (it's already doing it)

//Ingot conflicts
//First: nuggets to ingots
//Lead, Shiny, Gold, Iron, and Silver are fine
//Fix bronze (Tinker's Alloy)
recipes.remove(<ThermalFoundation:material:73>);
val tinkeralloynugget = <ThermalFoundation:material:105>;
recipes.addShaped(<TConstruct:materials:13>, [[tinkeralloynugget, tinkeralloynugget, tinkeralloynugget], 
[tinkeralloynugget, tinkeralloynugget, tinkeralloynugget], [tinkeralloynugget, tinkeralloynugget, tinkeralloynugget]]);
//Fix copper
recipes.remove(<ThermalFoundation:material:64>);
val coppernugget = <Thaumcraft:ItemNugget:1>;
recipes.addShaped(<TConstruct:materials:9>, [[coppernugget, coppernugget, coppernugget], [coppernugget, coppernugget, coppernugget],
[coppernugget, coppernugget, coppernugget]]);
//Fix tin
recipes.remove(<ThermalFoundation:material:65>);
val tinnugget = <Thaumcraft:ItemNugget:2>;
recipes.addShaped(<TConstruct:materials:10>, [[tinnugget, tinnugget, tinnugget], [tinnugget, tinnugget, tinnugget],
[tinnugget, tinnugget, tinnugget]]);

//Second: blocks to ingots - all fine

//Third: casting table ingots - all fine

//Fourth: furnace recipes for dust, native clusters, and ores should result in proper ingot
//Lead, Shiny, Gold, Iron, and Silver are fine
//Fix Bronze dust
furnace.remove(<ThermalFoundation:material:73>);
furnace.addRecipe(<TConstruct:materials:13>, <ThermalFoundation:material:41>, 0.5);
//Fix Copper dust
furnace.remove(<ThermalFoundation:material:64>);
furnace.addRecipe(<TConstruct:materials:9>, <ThermalFoundation:material:32>, 0.5);
//Fix Copper native clusters
furnace.addRecipe(<TConstruct:materials:9>*2, <Thaumcraft:ItemNugget:17>, 0.5);
//Fix Tin dust
furnace.remove(<ThermalFoundation:material:65>);
furnace.addRecipe(<TConstruct:materials:10>, <ThermalFoundation:material:33>, 0.5);
//Fix Tin native clusters
furnace.addRecipe(<TConstruct:materials:10>*2, <Thaumcraft:ItemNugget:18>, 0.5);
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
<ThermalFoundation:material:70>.displayName = "Mithril Ingot";
<ThermalFoundation:material:38>.displayName = "Pulverized Mithril";
<ThermalFoundation:material:102>.displayName = "Mithril Nugget";

<ThermalFoundation:Storage:6>.displayName = "Mithril Block"; //For some reason, this command did not work... I double checked 
//the item name and the syntax, as well as trying the thermal foundation copper block instead, but nothing I could see changed in-game.

//Block conflicts - all fine because the desired ingots and blocks all match, and the casting basins create those same versions


//Add Alchemical chemistry set recipe to creat Ethereal Blooms using Blood Magic
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:4>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, <minecraft:diamond>], 3, 2000);

//Necrotic Bone Recipe
mods.bloodmagic.Alchemy.addRecipe(<TConstruct:materials:8>, [<Thaumcraft:blockTaint:2>, <AWWayofTime:tennebrae>, 
<minecraft:bone>, <Thaumcraft:ItemShard:5>, <Thaumcraft:ItemShard:5>], 3, 2000);

//Shimmerleaf Blood Magic
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:yellow_flower>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:1>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:2>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:3>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:8>], 2, 500);

//Greatwood Addition
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:0>, [<minecraft:sapling>, <Thaumcraft:blockCrystal:0>, 
<Thaumcraft:blockCrystal:1>, <Thaumcraft:blockCrystal:2>, <Thaumcraft:blockCrystal:3>], 3, 2000);

mods.thaumcraft.Research.addResearch("WITHERINFUSION", "ALCHEMY", "tenebrae 10, exanimis 10, perditio 10, infernus 10", -7, -1, 4, <minecraft:skull:1>);
game.setLocalization("en_US", "tc.research_name.WITHERINFUSION", "Wither Infusion");
game.setLocalization("en_US", "tc.research_text.WITHERINFUSION", "Corrupting uncorrupted skulls");

mods.thaumcraft.Research.addResearch("SILVERWOODINFUSION", "ALCHEMY", "auram 10, arbor 10, praecantatio 10, sano 10", -2, -4, 4, <Thaumcraft:blockCustomPlant:1>);
game.setLocalization("en_US", "tc.research_name.SILVERWOODINFUSION", "Silverwood Infusion");
game.setLocalization("en_US", "tc.research_text.SILVERWOODINFUSION", "Promoting Trees");

//ResearchKey, LocalizationKey
mods.thaumcraft.Research.addPage("WITHERINFUSION", "cavestokingdoms.research_page.WITHERINFUSION");
game.setLocalization("en_US", "cavestokingdoms.research_page.WITHERINFUSION", "The lack of nether strongholds would normally make summoning withers hard. That being said, the ambient magic of this planet might make it possible to wither a normal skeleton skull, bypassing the need for the nether altogether. Now all you need to do is find normal skeletons. That... might also be a challenge, come to think of it.");
//ResearchKey, LocalizationKey
mods.thaumcraft.Research.addPage("SILVERWOODINFUSION", "cavestokingdoms.research_page.SILVERWOODINFUSION");
game.setLocalization("en_US", "cavestokingdoms.research_page.SILVERWOODINFUSION", "You could always use more silverwood trees, but you are loathe to chop down the ones you have, because you cannot guarantee that they give you a sapling. Instead, you have developed a way to infuse oak saplings with magic, transforming them into silverwood saplings.");

mods.thaumcraft.Infusion.addRecipe("WITHERINFUSION", <minecraft:skull:0>, [<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:nether_brick>, <minecraft:nether_brick>, <TConstruct:swordBlade:1>, <TConstruct:swordBlade:1>], "tenebrae 24, exanimis 32, perditio 48, infernus 64", <minecraft:skull:1>, 6);
mods.thaumcraft.Infusion.addRecipe("SILVERWOODINFUSION", <minecraft:sapling>, [<ThermalFoundation:material:66>, <ThermalFoundation:material:66>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>], "arbor 128, auram 32, praecantatio 128, sano 48", <Thaumcraft:blockCustomPlant:1>, 6);

mods.thaumcraft.Research.addInfusionPage("WITHERINFUSION", <minecraft:skull:1>);
mods.thaumcraft.Research.addInfusionPage("SILVERWOODINFUSION", <Thaumcraft:blockCustomPlant:1>);

//Axe the dagger, altar, and knife recipes.


//Remove Block breaker
recipes.remove(<ThermalExpansion:Device:3>);

//Remove metal from Milk
mods.thaumcraft.Aspects.remove(<MineFactoryReloaded:milkbottle>, "metallum 6");

//Remove Steam boiler
recipes.remove(<MineFactoryReloaded:machine.1:6>);

//Remove wands. Both of them, because I don't know which is which.
recipes.remove(<customnpcs:npcMagicWand>);
recipes.remove(<customnpcs:npcWand>);

//Remove AE2 Compass
recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);

//Language Samples
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 1, [<TabulaRasa:RasaItem0:1>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 1, [<TabulaRasa:RasaItem0:2>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 2, [<TabulaRasa:RasaItem0:3>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 3, [<TabulaRasa:RasaItem0:4>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 4, [<TabulaRasa:RasaItem0:5>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 5, [<TabulaRasa:RasaItem0:6>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 6, [<TabulaRasa:RasaItem0:7>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 7, [<TabulaRasa:RasaItem0:8>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 8, [<TabulaRasa:RasaItem0:9>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 9, [<TabulaRasa:RasaItem0:10>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 10, [<TabulaRasa:RasaItem0:11>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 12, [<TabulaRasa:RasaItem0:12>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 15, [<TabulaRasa:RasaItem0:13>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 17, [<TabulaRasa:RasaItem0:14>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 25, [<TabulaRasa:RasaItem0:15>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 4, [<TabulaRasa:RasaItem0:0>]);

<TabulaRasa:RasaItem0:1>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:2>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:3>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:4>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:5>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:6>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:7>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:8>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:9>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:10>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:11>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:12>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:13>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:14>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:15>.addTooltip("Can be crafted into");

<TabulaRasa:RasaItem0:1>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:2>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:3>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:4>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:5>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:6>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:7>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:8>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:9>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:10>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:11>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:12>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:13>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:14>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:15>.addTooltip(format.aqua("Language Samples."));

<TabulaRasa:RasaItem0:0>.addTooltip("Can be crafted into "+format.aqua("Language"));
<TabulaRasa:RasaItem0:0>.addTooltip(format.aqua("Samples.")+format.darkGray(format.italic(" Hendon Myre isn't")));
<TabulaRasa:RasaItem0:0>.addTooltip(format.darkGray(format.italic("the only old city with a legacy.")));

<TabulaRasa:RasaItem0:16>.addTooltip("A quest item for the Jaded");

<TabulaRasa:RasaItem0:17>.addTooltip("A quest item for the Jaded. Also");
<TabulaRasa:RasaItem0:17>.addTooltip("can be crafted into "+format.aqua("2 String."));

///...I'd better actually do that, huh?
recipes.addShapeless(<minecraft:string> * 2, [<TabulaRasa:RasaItem0:17>]);

<TabulaRasa:RasaItem0:18>.addTooltip("A crafting item. Used to");
<TabulaRasa:RasaItem0:18>.addTooltip("translate alien texts.");

<TabulaRasa:RasaItem0:19>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:19>.addTooltip(format.aqua("Device")+format.gray(" to translate! Too valuable"));
<TabulaRasa:RasaItem0:19>.addTooltip("to break into languge samples.");

<TabulaRasa:RasaItem0:22>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:22>.addTooltip(format.aqua("Device")+format.gray(" to translate! Too valuable"));
<TabulaRasa:RasaItem0:22>.addTooltip("to break into languge samples.");

<TabulaRasa:RasaItem0:23>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:23>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

<TabulaRasa:RasaItem0:24>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:24>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

<TabulaRasa:RasaItem0:25>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:25>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

<TabulaRasa:RasaItem0:26>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:26>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

recipes.addShapeless(<blightbuster:researchnote>, [<TabulaRasa:RasaItem0:22>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:6>, [<TabulaRasa:RasaItem0:23>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:7>, [<TabulaRasa:RasaItem0:24>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:8>, [<TabulaRasa:RasaItem0:25>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:9>, [<TabulaRasa:RasaItem0:26>, <TabulaRasa:RasaItem0:18>]);


<TabulaRasa:RasaItem0:20>.addTooltip("Craft together with a dye and a");
<TabulaRasa:RasaItem0:20>.addTooltip("flower to make the flower mystical.");

<TabulaRasa:RasaItem0:21>.addTooltip("Crafting item. Used in");
<TabulaRasa:RasaItem0:21>.addTooltip("infusion to make wings.");

recipes.remove(<Natura:natura.stewbowl>);

//Notes to help players decypher natura nether trees.
<Natura:florasapling:4>.addTooltip("Ghostwood can mine anything flint can.");
<Natura:florasapling:6>.addTooltip("Requires a hard non-metal axe to chop.");
<Natura:florasapling:6>.addTooltip("Darkwood can mine anything copper can.");
<Natura:florasapling:7>.addTooltip("Requires a soft metal axe to chop.");
<Natura:florasapling:7>.addTooltip("Fusewood can mine anything iron can");
<Natura:florasapling:5>.addTooltip("Requires a hard metal axe to chop.");
<Natura:florasapling:5>.addTooltip("Bloodwood can mine anything steel can.");

//Make chunkloaders easier.

recipes.remove(<MineFactoryReloaded:machine.2:10>);
recipes.addShaped(<MineFactoryReloaded:machine.2:10>, 
                [[<MineFactoryReloaded:plastic.sheet>, <MineFactoryReloaded:plastic.sheet>, <MineFactoryReloaded:plastic.sheet>], 
                 [<MineFactoryReloaded:machine.1:3>, <ore:gemCrystalFlux>, <MineFactoryReloaded:machine.1:3>], 
                 [<minecraft:redstone_block>, <MineFactoryReloaded:machineblock>, <minecraft:redstone_block>]]);

//Glue should make labels:
recipes.addShapeless(<Thaumcraft:ItemResource:13> * 4, [<ore:dyeBlack>, <TConstruct:materials:36>, <minecraft:paper>, <minecraft:paper>,<minecraft:paper>,<minecraft:paper>]);
recipes.addShapeless(<Thaumcraft:ItemResource:13> * 4, [<ore:dyeBlack>, <MineFactoryReloaded:pinkslime>, <minecraft:paper>, <minecraft:paper>,<minecraft:paper>,<minecraft:paper>]);
recipes.addShapeless(<Thaumcraft:ItemResource:13> * 4, [<ore:dyeBlack>, <TConstruct:strangeFood>, <minecraft:paper>, <minecraft:paper>,<minecraft:paper>,<minecraft:paper>]);
recipes.addShapeless(<Thaumcraft:ItemResource:13> * 4, [<ore:dyeBlack>, <Metallurgy:tar>, <minecraft:paper>, <minecraft:paper>,<minecraft:paper>,<minecraft:paper>]);

//Chest Recipe. Lol.
recipes.addShaped(<minecraft:chest> * 1, 
                [[<ore:logWood>, <ore:logWood>, <ore:logWood>], 
                 [<ore:logWood>, null, <ore:logWood>], 
                 [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

//Fix some harvestcraft recipes
//Glowshroom hiiden from NEI
mods.tconstruct.Drying.addRecipe(<harvestcraft:muttonrawItem>, <TConstruct:jerky:3>, 6000);
mods.tconstruct.Drying.addRecipe(<minecraft:fish:1>, <TConstruct:jerky:4>, 6000);
recipes.remove(<harvestcraft:hotdogItem>);
recipes.addShapeless(<harvestcraft:hotdogItem>, 
             [<MineFactoryReloaded:meat.nugget.cooked>, <MineFactoryReloaded:meat.nugget.cooked>, <MineFactoryReloaded:meat.nugget.cooked>, <minecraft:bread>]);
recipes.remove(<harvestcraft:loadedbakedpotatoItem>);
recipes.addShapeless(<harvestcraft:loadedbakedpotatoItem>, 
             [<TConstruct:strangeFood:2>, <ore:foodCheese> , <ore:foodButteredpotato>]);
recipes.remove(<harvestcraft:baconcheeseburgerItem>);
recipes.addShapeless(<harvestcraft:baconcheeseburgerItem>, 
             [<TConstruct:strangeFood:2>, <harvestcraft:cheeseburgerItem>]);
recipes.remove(<harvestcraft:epicbaconItem>);
recipes.addShapeless(<harvestcraft:epicbaconItem>, 
             [<TConstruct:strangeFood:2>, <ore:dyeRed>, <ore:dyePurple>, <ore:dyeOrange>, <ore:dyeYellow>, <ore:dyeMagenta>, <ore:dyeGreen>, <ore:dyeBlue>]);

//machina, volatus, potentia, iter, motus
recipes.remove(<ArchimedesShips:marker>);
mods.thaumcraft.Research.addResearch("FLYINGSHIP", "ARTIFICE", "machina 6, potentia 6, iter 6, motus 6, volatus 6", -6, 2, 4, <ArchimedesShips:marker>);
mods.thaumcraft.Research.addPrereq("FLYINGSHIP", "INFUSION", false);
game.setLocalization("en_US", "tc.research_name.FLYINGSHIP", "Flying Ships");
game.setLocalization("en_US", "tc.research_text.FLYINGSHIP", "Scouting in Style");
game.setLocalization("en_US", "cavestokingdoms.research_page.FLYINGSHIP", "The Jaded expects you to scout, and yet they keep all the aircraft for themselves. Hardly seems fair. <BR>Whatever. You can just make your own aircraft. The Ship Helm allows you to create ships. It is the core of the 'Archimedes Ships' mod. Search the internet for more information on how to use that mod; only the recipe for the ship helm has changed.");
game.setLocalization("en_US", "cavestokingdoms.research_page.FLYINGSHIP2", "Only certain blocks will work on a ship. Most vanilla or decorative blocks will work. Most mod-added blocks that have a function of some kind will not. These airships are suitable to be transportation, not mobiles bases.");
mods.thaumcraft.Infusion.addRecipe("FLYINGSHIP", <Thaumcraft:blockMagicalLog>, [<minecraft:redstone_block>, <ThermalFoundation:material:134>, <ThermalFoundation:material:136>, <minecraft:redstone_block>, <ThermalFoundation:material:134>, <ThermalFoundation:material:136>], 
	"machina 24, potentia 32, iter 32, motus 32, volatus 16", <ArchimedesShips:marker>, 4);
mods.thaumcraft.Research.addPage("FLYINGSHIP", "cavestokingdoms.research_page.FLYINGSHIP");
mods.thaumcraft.Research.addInfusionPage("FLYINGSHIP", <ArchimedesShips:marker>);
mods.thaumcraft.Research.addPage("FLYINGSHIP", "cavestokingdoms.research_page.FLYINGSHIP2");


//Remove ugly stuff from NEI:

NEI.hide(<AWWayofTime:blockSchemSaver>);

recipes.remove(<ExtraUtilities:decorativeBlock1:14>);

recipes.addShapeless(<ExtraUtilities:decorativeBlock1:14>, 
             [<ore:stone>, <ore:stone>, <ore:obsidian>, <ore:obsidian>, <ore:dyePurple>, <ore:dyePurple>, <minecraft:ender_eye>, <ore:ingotUnstable>]);

val qSilver = <ore:nuggetQuicksilver>;

qSilver.remove(<Thaumcraft:ItemResource:3>);

recipes.addShapeless(<Natura:barley.seed:1>, [<Natura:barleyFood:3>]);

val blueGem = <ore:gemSapphire>;
blueGem.add(<customnpcs:npcSaphire>);