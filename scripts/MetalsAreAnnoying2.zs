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

/*  Thaumcraft nugget duplication  */

//Metallurgy Fantasy Metals

game.setLocalization("en_US", "tc.research_name.TRANSFANTASY", "Fantasy Metals");
game.setLocalization("en_US", "tc.research_text.TRANSFANTASY", "Where magic meets metals");
game.setLocalization("en_US", "tc.research_page.TRANSFANTASY.1", "You have found various fantastical metals on this planet, but they are simply too difficult to find in large quantities. You have taken it upon yourself to apply the principles of metal transmutation to multiply your stores of these fantasy metals. You might be able to fetch a high price for them if only you knew the right person...");
mods.thaumcraft.Research.addResearch("TRANSFANTASY", "ALCHEMY", "metallum 6, permutatio 4, praecantatio 4, perfodio 2, desidia 0", 5, 5, 5, <Metallurgy:fantasy.nugget>);
mods.thaumcraft.Research.addPrereq("TRANSFANTASY", "TRANSIRON", true);
mods.thaumcraft.Research.setConcealed("TRANSFANTASY", true);
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget> * 3, <ore:nuggetPrometheum>, "metallum 2, herba 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:1> * 3, <ore:nuggetDeepIron>, "metallum 2, terra 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:2> * 3, <ore:nuggetInfuscolium>, "metallum 2, praecantatio 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:4> * 3, <ore:nuggetOureclase>, "metallum 2, tutamen 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:5> * 3, <ore:nuggetAstralSilver>, "metallum 2, auram 1, lucrum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:6> * 3, <ore:nuggetCarmot>, "metallum 2, praecantatio 1, aer 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <ThermalFoundation:material:102> * 3, <ore:nuggetMithril>, "metallum 2, volatus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:8> * 3, <ore:nuggetRubracium>, "metallum 2, spiritus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:11> * 3, <ore:nuggetOrichalcum>, "metallum 2, vitreus 1, tutamen 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:13> * 3, <ore:nuggetAdamantine>, "metallum 2, tutamen 1, terra 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:14> * 3, <ore:nuggetAtlarus>, "metallum 2, tutamen 1, auram 1");
mods.thaumcraft.Research.addPage("TRANSFANTASY", "tc.research_page.TRANSFANTASY.1");
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:1>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:2>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:4>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:5>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:6>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <ThermalFoundation:material:102>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:8>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:11>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:13>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:14>);

//Nether Metals

game.setLocalization("en_US", "tc.research_name.TRANSNETHER", "Nether Metals");
game.setLocalization("en_US", "tc.research_text.TRANSNETHER", "Metals forged in the fires of hell");
game.setLocalization("en_US", "tc.research_page.TRANSNETHER.1", "There are various hellish metals found beneath the volcanic islands just off the coast of the continent. Many of them have useful qualities as weapons, such as weakening or poisoning your opponents. The only problem with the weapon casts developed by Dr. Diyo is that they often take large amounts of metal for the more powerful weapons. To remedy this, you have deepened your research of transmuting the fantasy metals of this planet and are now also able to duplicate these infernal metals.");
mods.thaumcraft.Research.addResearch("TRANSNETHER", "ALCHEMY", "metallum 4, permutatio 2, infernus 2", 4, 5, 5, <Metallurgy:nether.nugget>);
mods.thaumcraft.Research.setSecondary("TRANSNETHER", true);
mods.thaumcraft.Research.addPrereq("TRANSNETHER", "TRANSFANTASY", false);
mods.thaumcraft.Research.setConcealed("TRANSNETHER", true);
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget> * 3, <ore:nuggetIgnatius>, "metallum 2, ignis 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:1> * 3, <ore:nuggetShadowIron>, "metallum 2, permutatio 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:2> * 3, <ore:nuggetLemurite>, "metallum 2, infernus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:3> * 3, <ore:nuggetMidasium>, "metallum 2, lucrum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:4> * 3, <ore:nuggetVyroxeres>, "metallum 2, venenum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:5> * 3, <ore:nuggetCeruclase>, "metallum 2, gelum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:6> * 3, <ore:nuggetAlduorite>, "metallum 2, vinculum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:7> * 3, <ore:nuggetKalendrite>, "metallum 2, sano 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:8> * 3, <ore:nuggetVulcanite>, "metallum 2, ignis 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:9> * 3, <ore:nuggetSanguinite>, "metallum 2, ignis 1, superbia 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <TConstruct:materials:28> * 3, <ore:nuggetCobalt>, "metallum 2, motus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <TConstruct:materials:29> * 3, <ore:nuggetArdite>, "metallum 2, ignis 1, terra 1");
mods.thaumcraft.Research.addPage("TRANSNETHER", "tc.research_page.TRANSNETHER.1");
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:1>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:2>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:3>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:4>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:5>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:6>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:7>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:8>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:9>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <TConstruct:materials:28>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <TConstruct:materials:29>);

//Ender metals

game.setLocalization("en_US", "tc.research_name.TRANSENDER", "Ender Metals");
game.setLocalization("en_US", "tc.research_text.TRANSENDER", "Not that kind of void metal");
game.setLocalization("en_US", "tc.research_page.TRANSENDER.1", "Your exploration of eerie locales on this alien planet has uncovered some metals that resonate with energy from the end. You have managed to replicate these metals in a manner similar to the other fantasy metals that you have found. These metals are also quite dense; they make for strong and durable tools when alloyed together.");
mods.thaumcraft.Research.addResearch("TRANSENDER", "ALCHEMY", "metallum 4, permutatio 2, alienis 2", 6, 5, 5, <Metallurgy:ender.nugget>);
mods.thaumcraft.Research.setSecondary("TRANSENDER", true);
mods.thaumcraft.Research.addPrereq("TRANSENDER", "TRANSFANTASY", false);
mods.thaumcraft.Research.setConcealed("TRANSENDER", true);
mods.thaumcraft.Crucible.addRecipe("TRANSENDER", <Metallurgy:ender.nugget> * 3, <ore:nuggetEximite>, "metallum 2, alienis 1");
mods.thaumcraft.Crucible.addRecipe("TRANSENDER", <Metallurgy:ender.nugget:1> * 3, <ore:nuggetMeutoite>, "metallum 2, alienis 1");
mods.thaumcraft.Research.addPage("TRANSENDER", "tc.research_page.TRANSENDER.1");
mods.thaumcraft.Research.addCruciblePage("TRANSENDER", <Metallurgy:ender.nugget>);
mods.thaumcraft.Research.addCruciblePage("TRANSENDER", <Metallurgy:ender.nugget:1>);

//Tech metals and manganese

game.setLocalization("en_US", "tc.research_name.TRANSNICKEL", "Nickel Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSNICKEL", "Transformation of metals into nickel");
game.setLocalization("en_US", "tc.research_page.TRANSNICKEL.1", "You have discovered a way to multiply nickel by steeping nickel nuggets in §5metallum§0 harvested from other metals.");
mods.thaumcraft.Research.addResearch("TRANSNICKEL", "ALCHEMY", "metallum 2, machina 1", 2, 6, 0, <ThermalFoundation:material:100>);
mods.thaumcraft.Research.setSecondary("TRANSNICKEL", true);
mods.thaumcraft.Research.setConcealed("TRANSNICKEL", true);
mods.thaumcraft.Research.addPrereq("TRANSNICKEL", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSNICKEL", <ThermalFoundation:material:100> * 3, <ore:nuggetNickel>, "metallum 2, machina 1");
mods.thaumcraft.Research.addPage("TRANSNICKEL", "tc.research_page.TRANSNICKEL.1");
mods.thaumcraft.Research.addCruciblePage("TRANSNICKEL", <ThermalFoundation:material:100>);

game.setLocalization("en_US", "tc.research_name.TRANSPLATINUM", "Platinum Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSPLATINUM", "Transformation of metals into platinum");
game.setLocalization("en_US", "tc.research_page.TRANSPLATINUM.1", "You have discovered a way to multiply platinum by steeping platinum nuggets in §5metallum§0 harvested from other metals.");
mods.thaumcraft.Research.addResearch("TRANSPLATINUM", "ALCHEMY", "metallum 2, lucrum 1, permutatio 1", 2, 4, 0, <ThermalFoundation:material:101>);
mods.thaumcraft.Research.setSecondary("TRANSPLATINUM", true);
mods.thaumcraft.Research.setConcealed("TRANSPLATINUM", true);
mods.thaumcraft.Research.addPrereq("TRANSPLATINUM", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSPLATINUM", <ThermalFoundation:material:101> * 3, <ore:nuggetPlatinum>, "metallum 2, lucrum 1, permutatio 1");
mods.thaumcraft.Research.addPage("TRANSPLATINUM", "tc.research_page.TRANSPLATINUM.1");
mods.thaumcraft.Research.addCruciblePage("TRANSPLATINUM", <ThermalFoundation:material:101>);

game.setLocalization("en_US", "tc.research_name.TRANSALUMINUM", "Aluminum Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSALUMINUM", "Transformation of metals into aluminum");
game.setLocalization("en_US", "tc.research_page.TRANSALUMINUM.1", "You have discovered a way to multiply aluminum by steeping aluminum nuggets in §5metallum§0 harvested from other metals.");
mods.thaumcraft.Research.addResearch("TRANSALUMINUM", "ALCHEMY", "metallum 2, machina 1", 3, 6, 0, <TConstruct:materials:22>);
mods.thaumcraft.Research.setSecondary("TRANSALUMINUM", true);
mods.thaumcraft.Research.setConcealed("TRANSALUMINUM", true);
mods.thaumcraft.Research.addPrereq("TRANSALUMINUM", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSALUMINUM", <TConstruct:materials:22> * 3, <ore:nuggetAluminum>, "metallum 2, machina 1");
mods.thaumcraft.Research.addPage("TRANSALUMINUM", "tc.research_page.TRANSALUMINUM.1");
mods.thaumcraft.Research.addCruciblePage("TRANSALUMINUM", <TConstruct:materials:22>);

game.setLocalization("en_US", "tc.research_name.TRANSMANGANESE", "Manganese Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSMANGANESE", "Transformation of metals into manganese");
game.setLocalization("en_US", "tc.research_page.TRANSMANGANESE.1", "You have discovered a way to multiply manganese by steeping manganese nuggets in §5metallum§0 harvested from other metals.");
mods.thaumcraft.Research.addResearch("TRANSMANGANESE", "ALCHEMY", "metallum 2, terra 1", 3, 4, 0, <Metallurgy:base.nugget:2>);
mods.thaumcraft.Research.setSecondary("TRANSMANGANESE", true);
mods.thaumcraft.Research.setConcealed("TRANSMANGANESE", true);
mods.thaumcraft.Research.addPrereq("TRANSMANGANESE", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSMANGANESE", <Metallurgy:base.nugget:2> * 3, <ore:nuggetManganese>, "metallum 2, terra 1");
mods.thaumcraft.Research.addPage("TRANSMANGANESE", "tc.research_page.TRANSMANGANESE.1");
mods.thaumcraft.Research.addCruciblePage("TRANSMANGANESE", <Metallurgy:base.nugget:2>);

