import minetweaker.item.IItemStack;

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
