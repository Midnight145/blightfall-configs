import minetweaker.item.IItemStack;

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

                   //////////
                   //COPPER//
                   //////////

val copperIngot = <ThermalFoundation:material:64>;
val copperIngotDict = <ore:ingotCopper>;
val copperDustDict = <ore:dustCopper>;
val copperOreDict = <ore:oreCopper>;

//Replace a bunch of vanilla smelting recipes
 furnace.remove(copperIngotDict);
 furnace.addRecipe(copperIngot*2,<Thaumcraft:ItemNugget:17>); //Ore cluster
 furnace.addRecipe(copperIngot,copperDustDict);
 furnace.addRecipe(copperIngot,copperOreDict);

//Change metallurgy brick recipe:
 recipes.remove(<Metallurgy:base.brick>);
 recipes.addShaped(<Metallurgy:base.brick>,
 [[copperIngotDict, copperIngotDict],
  [copperIngotDict, copperIngotDict]]);


                   ///////
                   //TIN//
                   ///////

val tinIngot = <ThermalFoundation:material:65>;
val tinIngotDict = <ore:ingotTin>;
val tinDustDict = <ore:dustTin>;
val tinOreDict = <ore:oreTin>;

//Replace a bunch of vanilla smelting recipes
 furnace.remove(tinIngotDict);
 furnace.addRecipe(tinIngot*2,<Thaumcraft:ItemNugget:18>); //Ore cluster
 furnace.addRecipe(tinIngot,tinDustDict);
 furnace.addRecipe(tinIngot,tinOreDict);
