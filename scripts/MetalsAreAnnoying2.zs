import minetweaker.item.IItemStack;

                   //////////
                   //COPPER//
                   //////////

val copperIngot = <ThermalFoundation:material:64>;
val copperIngotDict = <ore:ingotCopper>;
val copperDustDict = <ore:dustCopper>;
val copperOreDict = <ore:oreCopper>;
val copperBlock = <ThermalFoundation:Storage:0>;

//Replace a bunch of vanilla smelting recipes
 furnace.remove(copperIngotDict);
 furnace.addRecipe(copperIngot*2, <Thaumcraft:ItemNugget:17>); //Ore cluster
 furnace.addRecipe(copperIngot, copperDustDict);
 furnace.addRecipe(copperIngot, copperOreDict);

//Change metallurgy brick recipe:
 recipes.remove(<Metallurgy:base.brick>);
 recipes.addShaped(<Metallurgy:base.brick>, 
 [[copperIngotDict, copperIngotDict], 
  [copperIngotDict, copperIngotDict]]);

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

//Replace a bunch of vanilla smelting recipes
 furnace.remove(tinIngotDict);
 furnace.addRecipe(tinIngot*2, <Thaumcraft:ItemNugget:18>); //Ore cluster
 furnace.addRecipe(tinIngot, tinDustDict);
 furnace.addRecipe(tinIngot, tinOreDict);

// Change smeltery casting to Thermal tin
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:10>);
mods.tconstruct.Casting.addTableRecipe(tinIngot, <liquid:tin.molten> * 144, <TConstruct:metalPattern> * 1, false, 20);
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:5>);
mods.tconstruct.Casting.addBasinRecipe(tinBlock, <liquid:tin.molten> * 1296, null, false, 20);
