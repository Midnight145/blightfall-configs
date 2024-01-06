import mods.nei.NEI;

print("SCRIPT: Miscellanous Singletons");

// Make ketchup useful.

mods.tconstruct.Drying.addRecipe(<harvestcraft:ketchupItem>, <minecraft:slime_ball>, 2000);

//Kill JABBA Diamond dolly.
NEI.hide(<JABBA:moverDiamond>);
recipes.remove(<JABBA:moverDiamond>);

recipes.remove(<ThermalFoundation:Storage:6>);
recipes.remove(<Metallurgy:fantasy.block:7>);
recipes.addShaped(<ThermalFoundation:Storage:6>, [[<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>], [<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>], [<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>]]);

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
mods.thermalexpansion.Smelter.addRecipe(50000, <Thaumcraft:ItemShard:1> * 4, <ForbiddenMagic:NetherShard>, <ThaumicTinkerer:kamiResource:6>, <AWWayofTime:incendium>, 10);

//Ender Shards
mods.tconstruct.Casting.addTableRecipe(<ThaumicTinkerer:kamiResource:7>, <liquid:enderium.molten>*576, <Thaumcraft:ItemShard:6>, true, 20);

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

// Conversion between sulfurs
recipes.addShapeless(<ThermalFoundation:material:16>, [<Metallurgy:utility.item:0>]);
recipes.addShapeless(<Metallurgy:utility.item:0>, [<ThermalFoundation:material:16>]);

// Forge Lexicon crashes the game, no clue why
NEI.hide(<ThermalFoundation:lexicon>);
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

recipes.addShaped(<chisel:chisel.marble> * 4, [[<ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>]]);

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
