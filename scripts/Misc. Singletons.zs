import mods.nei.NEI;

// Make ketchup useful.

mods.tconstruct.Drying.addRecipe(<harvestcraft:ketchupItem>, <minecraft:slime_ball>, 2000);

//Kill JABBA Diamond dolly.
NEI.hide(<JABBA:moverDiamond>);
recipes.remove(<JABBA:moverDiamond>);

recipes.remove(<ThermalFoundation:Storage:6>);
recipes.remove(<Metallurgy:fantasy.block:7>);
recipes.addShaped(<Metallurgy:fantasy.block:7>, [[<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>], [<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>], [<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>]]);

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

mods.thaumcraft.Research.addResearch("TAINTEGG", "ELDRITCH", "vitium 128, praecantatio 128", 0, 2, 8, <Thaumcraft:ItemSpawnerEgg:28>);
mods.thaumcraft.Research.addPrereq("TAINTEGG", "TAINTSHOVEL", false);
mods.thaumcraft.Research.addPrereq("TAINTEGG", "BOTTLETAINT");
mods.thaumcraft.Research.addPrereq("TAINTEGG", "PRIMPEARL");

mods.thaumcraft.Research.setSpikey("TAINTEGG", true);
mods.thaumcraft.Research.setConcealed("TAINTEGG", true);

mods.thaumcraft.Warp.addToResearch("TAINTEGG", 25);
mods.thaumcraft.Warp.addToItem(<Thaumcraft:ItemSpawnerEgg:28>, 5);

mods.thaumcraft.Infusion.addRecipe("TAINTEGG", <minecraft:egg>, [
    <Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:3>,
    <Thaumcraft:ItemBottleTaint>, <Thaumcraft:ItemBottleTaint>, <Thaumcraft:ItemBottleTaint>, <Thaumcraft:ItemBottleTaint>,
    <ForbiddenMagic:NetherShard:2>, <ForbiddenMagic:NetherShard:2>, <ForbiddenMagic:NetherShard:2>, <ForbiddenMagic:NetherShard:2>,
    <Thaumcraft:ItemResource:17>, <Thaumcraft:ItemResource:17>,
    <Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:12>
], "vitium 128, victus 64, bestia 64, praecantatio 64, ignis 64, ordo 64, aer 64, perditio 64, aqua 64, terra 64",
<Thaumcraft:ItemSpawnerEgg:28>, 25);

mods.thaumcraft.Research.addPage("TAINTEGG", "blightbuster.research_page.TAINTEGG_1");
mods.thaumcraft.Research.addPage("TAINTEGG", "blightbuster.research_page.TAINTEGG_2");
game.setLocalization("en_US", "blightbuster.research_page.TAINTEGG_1", "The Primordial Pearl resonates with energies that are fundamentally different from the magic of this reality, and yet these energies readily fuse with so many parts of this world. Perhaps this is, objectively, more unsettling than I find it to be, but I have already done so much in the pursuit of knowledge.<BR>I've studied much of this world, and I've learned so much from it. I've studied magic, I've studied taint, I've studied--and been to--the void...and I've studied the Pearl.");
game.setLocalization("en_US", "blightbuster.research_page.TAINTEGG_2", "Perhaps it was the Warp that compelled me to perform this research, or perhaps it was only my curious nature and thirst for knowledge. The line between the two is thinner than I'd like to admit.<BR>I have built upon the Taint, and designed the means to summon--nay, to spawn--a monstrosity far beyond anything this planet has seen. To create life in this way, or even a corrupt and twisted facsimile of life, will be a major undertaking.<LINE>I hold the means to be the savior of this world; it only seems fitting that I hold the means to be its destroyer.");
game.setLocalization("tc.research_name.TAINTEGG", "Giant Taintacle");
game.setLocalization("tc.research_text.TAINTEGG", "It was either this or an ASM patch...");

mods.thaumcraft.Research.addInfusionPage("TAINTEGG", <Thaumcraft:ItemSpawnerEgg:28>);

// fix infused seed recipe
val shards = <ore:materialAspectShard>;

for item in shards.items {
    shards.remove(item);
}
