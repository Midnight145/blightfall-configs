import minetweaker.item.IItemStack;
import mods.nei.NEI;

print("SCRIPT: Miscellanous Singletons");

// Make ketchup useful.

mods.tconstruct.Drying.addRecipe(<harvestcraft:ketchupItem>, <minecraft:slime_ball>, 2000);

//Kill JABBA Diamond dolly.
recipes.remove(<JABBA:moverDiamond>);

val woodPlank = <ore:plankWood>;
val book = <minecraft:book:*>;
recipes.addShaped(<minecraft:bookshelf>, [[woodPlank, woodPlank, woodPlank], [book, book, book], [woodPlank, woodPlank, woodPlank]]);
//Potash Apple
recipes.addShapeless(<Natura:Natura.netherfood>, [<minecraft:apple>, <Metallurgy:utility.item:5>]);

//Pulverize Salt
mods.thermalexpansion.Pulverizer.addRecipe(3000, <harvestcraft:salt>, <harvestcraft:saltItem>*4, <Thaumcraft:ItemResource:14>, 2);

//Pulverize Shards
mods.thermalexpansion.Pulverizer.addRecipe(3000, <Thaumcraft:blockCustomOre:1>, <Thaumcraft:ItemShard> * 1, <Thaumcraft:ItemResource:14>, 2);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <Thaumcraft:blockCustomOre:2>, <Thaumcraft:ItemShard:1> * 1, <Thaumcraft:ItemResource:14>, 2);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <Thaumcraft:blockCustomOre:3>, <Thaumcraft:ItemShard:2> * 1, <Thaumcraft:ItemResource:14>, 2);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <Thaumcraft:blockCustomOre:4>, <Thaumcraft:ItemShard:3> * 1, <Thaumcraft:ItemResource:14>, 2);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <Thaumcraft:blockCustomOre:5>, <Thaumcraft:ItemShard:4> * 1, <Thaumcraft:ItemResource:14>, 2);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <Thaumcraft:blockCustomOre:6>, <Thaumcraft:ItemShard:5> * 1, <Thaumcraft:ItemResource:14>, 2);

//Nether Shard Shards
mods.thermalexpansion.Smelter.addRecipe(48000, <Thaumcraft:ItemShard:1> * 4, <ForbiddenMagic:NetherShard>, <ThaumicTinkerer:kamiResource:6>, <AWWayofTime:incendium>, 10);

//Making Covers less expensive.
recipes.remove(<ThermalDynamics:ThermalDynamics_48>);
recipes.addShaped(<ThermalDynamics:ThermalDynamics_48> *6, [[<ore:nuggetInvar>, <ore:ingotIron>, <ore:nuggetInvar>]]);

mods.thaumcraft.Arcane.addShaped("thaumicenergistics.TEFOCUSWRENCH", <thaumicenergistics:focus.aewrench>, "aer 10, ignis 10", [[<Thaumcraft:ItemShard:0>, <minecraft:quartz>, <Thaumcraft:ItemShard:1>], [<minecraft:quartz>, <appliedenergistics2:item.ToolNetherQuartzWrench>, <minecraft:quartz>], [<Thaumcraft:ItemShard:1>, <minecraft:quartz>, <Thaumcraft:ItemShard:0>]]);

mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:diamond_chestplate>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:diamond_leggings>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:diamond_boots>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:diamond_helmet>);

// Recipe to "undo" Angmallen creation
mods.thermalexpansion.Smelter.addRecipe(800, <Metallurgy:angmallen.ingot> * 2, <minecraft:sand>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, 100);

recipes.remove(<Natura:barleyFood:4>);
recipes.addShaped(<ThermalFoundation:material:16>, [[<Natura:Cloud:3>, <Natura:Cloud:3>], [<Natura:Cloud:3>, <Natura:Cloud:3>]]);

// Conversion between sulfurs and saltpeters
recipes.addShapeless(<ThermalFoundation:material:16>, [<Metallurgy:utility.item:0>]);
recipes.addShapeless(<Metallurgy:utility.item:0>, [<ThermalFoundation:material:16>]);
recipes.addShapeless(<ThermalFoundation:material:17>, [<Metallurgy:utility.item:2>]);
recipes.addShapeless(<Metallurgy:utility.item:2>, [<ThermalFoundation:material:17>]);
recipes.remove(<Metallurgy:utility.block:0>);
recipes.addShapeless(<Metallurgy:utility.block:0>, [<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>]);
recipes.remove(<Metallurgy:utility.block:2>);
recipes.addShapeless(<Metallurgy:utility.block:2>, [<ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>]);

// Forge Lexicon crashes the game, no clue why
recipes.remove(<ThermalFoundation:lexicon>);

val magicSapling = <ore:magicSapling>;
magicSapling.add(<Thaumcraft:blockCustomPlant:0>);
magicSapling.add(<Thaumcraft:blockCustomPlant:1>);

val shardNether = <ore:shardNether>;

shardNether.add(<ForbiddenMagic:GluttonyShard:0>);
shardNether.add(<ForbiddenMagic:NetherShard:0>);
shardNether.add(<ForbiddenMagic:NetherShard:1>);
shardNether.add(<ForbiddenMagic:NetherShard:2>);
shardNether.add(<ForbiddenMagic:NetherShard:3>);
shardNether.add(<ForbiddenMagic:NetherShard:4>);
shardNether.add(<ForbiddenMagic:NetherShard:5>);

// fix infused seed recipe
val shards = <ore:materialAspectShard>;

for item in shards.items {
    shards.remove(item);
}

var lignite = <UndergroundBiomes:ligniteCoal>;
recipes.addShapeless(<minecraft:coal:0>, [lignite, lignite, lignite, lignite, lignite, lignite, lignite, lignite]);
recipes.removeShaped(<minecraft:coal:0>); // remove lignite * 9 recipe, minetweaker removes all recipes even if using specific recipe removal so just doing this instead
recipes.addShaped(<minecraft:coal:0> * 9, [[<minecraft:coal_block:0>]]); // readd coal block recipe

recipes.addShapeless(<ThermalFoundation:material:44> * 4, [<ore:dustTin>, <ore:dustTin>, <ore:dustSilver>, <ore:dustPlatinum>, <TConstruct:buckets:23>]);

// add full stone tool rod crafting recipes
recipes.addShaped(<TConstruct:toolRod:1> * 2, [[<ore:cobblestone>], [<ore:cobblestone>]]);
recipes.removeShaped(<ForgeMicroblock:stoneRod>);
recipes.addShaped(<TConstruct:toolRod:1> * 4, [[<ore:stone>], [<ore:stone>]]);

// oredictionary card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:55> * 1, [<appliedenergistics2:item.ItemMultiMaterial:28>, <ExtraUtilities:nodeUpgrade:1>]);

// hyper acceleration card
recipes.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:56> * 1, [<appliedenergistics2:item.ItemMultiMaterial:30>, <minecraft:emerald>]);

val oreMarble = <ore:blockMarble>;
oreMarble.add(<UndergroundBiomes:metamorphicStone:2>);

recipes.addShaped(<chisel:chisel.marble> * 9, [[<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>]]);
recipes.addShaped(<chisel:chisel.limestone> * 9, [[<UndergroundBiomes:sedimentaryStone:0>, <UndergroundBiomes:sedimentaryStone:0>, <UndergroundBiomes:sedimentaryStone:0>], [<UndergroundBiomes:sedimentaryStone:0>, <UndergroundBiomes:sedimentaryStone:0>, <UndergroundBiomes:sedimentaryStone:0>], [<UndergroundBiomes:sedimentaryStone:0>, <UndergroundBiomes:sedimentaryStone:0>, <UndergroundBiomes:sedimentaryStone:0>]]);

// remove warded slab
recipes.removeShaped(<ThaumicTinkerer:wardSlab:0>);

// Infusion uses fuzzy matching, but for some reason still only accepts vanilla fish. To avoid showing all fish in the recipe,
// let's just change the recipe to only use vanilla fish.

mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:BootsTraveller>);

val fish = <ore:vanillaFishRaw>;
fish.add(<minecraft:fish:*>);

mods.thaumcraft.Infusion.addRecipe(
    "BOOTSTRAVELLER", 
    <minecraft:leather_boots>, 
    [
        <Thaumcraft:ItemShard:0>,
        <Thaumcraft:ItemShard:0>,
        <minecraft:feather>,
        <minecraft:fish:32767>,
        <Thaumcraft:ItemResource:7>,
        <Thaumcraft:ItemResource:7>
    ],
    "volatus 24, iter 24",
    <Thaumcraft:BootsTraveller>,
    1
);

val stones = [
    <UndergroundBiomes:igneousStone:0>,
    <UndergroundBiomes:igneousStone:1>,
    <UndergroundBiomes:igneousStone:2>,
    <UndergroundBiomes:igneousStone:3>,
    <UndergroundBiomes:igneousStone:4>,
    <UndergroundBiomes:igneousStone:5>,
    <UndergroundBiomes:igneousStone:6>,
    <UndergroundBiomes:igneousStone:7>,
    <UndergroundBiomes:sedimentaryStone:0>,
    <UndergroundBiomes:sedimentaryStone:1>,
    <UndergroundBiomes:sedimentaryStone:2>,
    <UndergroundBiomes:sedimentaryStone:3>,
    <UndergroundBiomes:sedimentaryStone:4>,
    <UndergroundBiomes:sedimentaryStone:5>,
    <UndergroundBiomes:sedimentaryStone:6>,
    <UndergroundBiomes:sedimentaryStone:7>,
    <UndergroundBiomes:metamorphicStone:0>,
    <UndergroundBiomes:metamorphicStone:1>,
    <UndergroundBiomes:metamorphicStone:2>,
    <UndergroundBiomes:metamorphicStone:3>,
    <UndergroundBiomes:metamorphicStone:4>,
    <UndergroundBiomes:metamorphicStone:5>,
    <UndergroundBiomes:metamorphicStone:6>,
    <UndergroundBiomes:metamorphicStone:7>
] as IItemStack[];
for stone in stones {
    mods.botania.ManaInfusion.addConjuration(stone * 2, stone, 100);
}

// Pulverize Phosphorus
mods.thermalexpansion.Pulverizer.addRecipe(4000, <Metallurgy:utility.ore:1>, <Metallurgy:utility.item:1> * 2);

// Cobalt and Ardite QED recipes
mods.extraUtils.QED.addShapedRecipe(<TConstruct:materials:3> * 3, [[<ore:coal>, <ore:oreCobalt>]]);
mods.extraUtils.QED.addShapedRecipe(<TConstruct:materials:3> * 3, [[<ore:oreCobalt>, <ore:coal>]]);
mods.extraUtils.QED.addShapedRecipe(<TConstruct:materials:4> * 3, [[<ore:coal>, <ore:oreArdite>]]);
mods.extraUtils.QED.addShapedRecipe(<TConstruct:materials:4> * 3, [[<ore:oreArdite>, <ore:coal>]]);

// Remove useless ichorium nuggets
recipes.remove(<ThaumicTinkerer:kamiResource:3>);

// Remove useless Thaumic Energistics gearboxen
mods.thaumcraft.Research.orphanResearch("thaumicenergistics.TETHAUMGBOX");
mods.thaumcraft.Research.removeResearch("thaumicenergistics.TETHAUMGBOX");
mods.thaumcraft.Research.orphanResearch("thaumicenergistics.Pseudo.COREUSE");
mods.thaumcraft.Research.removeResearch("thaumicenergistics.Pseudo.COREUSE");
mods.thaumcraft.Research.orphanResearch("thaumicenergistics.TEIRONGEARBOX");
mods.thaumcraft.Research.removeResearch("thaumicenergistics.TEIRONGEARBOX");
mods.thaumcraft.Arcane.removeRecipe(<thaumicenergistics:material:2>);
mods.thaumcraft.Arcane.removeRecipe(<thaumicenergistics:thaumicenergistics.block.gear.box>);
mods.thaumcraft.Crucible.removeRecipe(<thaumicenergistics:thaumicenergistics.block.golem.gear.box>);
mods.tconstruct.Casting.removeTableRecipe(<thaumicenergistics:material:2>);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:12>, <liquid:iron.molten> * 576, <TConstruct:gearCast>, false, 20);

// Rename HQM Bags
game.setLocalization("en_US", "hqm.bag.basic", "Seeds");
game.setLocalization("en_US", "hqm.bag.good", "Saplings");
game.setLocalization("en_US", "hqm.bag.greater", "Animals");
game.setLocalization("en_US", "hqm.bag.epic", "Machines");
game.setLocalization("en_US", "hqm.bag.legendary", "Nether Ores");
game.setLocalization("en_US", "item.hqm:bags.name", "Supply Bag");

// Readd Trash Cans
recipes.remove(<ExtraUtilities:trashcan:0>);
recipes.addShaped(<ExtraUtilities:trashcan>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:cobblestone>, <minecraft:lava_bucket>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShaped(<ExtraUtilities:trashcan>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:cobblestone>, <IguanaTweaksTConstruct:clayBucketLava>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// EFR Beetroot
mods.thaumcraft.Crucible.addRecipe("PLANTCONJURATION", <etfuturum:beetroot_seeds>, <minecraft:wheat_seeds>, "sensus 5, messis 2");
mods.thaumcraft.Research.addCruciblePage("PLANTCONJURATION", <etfuturum:beetroot_seeds>);

// Remove Useless Skystone Dust
mods.thermalexpansion.Pulverizer.removeRecipe(<appliedenergistics2:tile.BlockSkyStone>);
