print("Disabled Blocks and Items");
// See killHarvestCraft.zs for harvestcraft things.

// Power Generation
recipes.remove(<MineFactoryReloaded:machine.1:6>); // Steam Boiler
recipes.remove(<MineFactoryReloaded:machine.1:10>); // BioReactor
recipes.remove(<MineFactoryReloaded:machine.1:11>); // BioFuel Generator
recipes.remove(<ThermalExpansion:Dynamo:*>); // All dynamos

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

// Misc
recipes.remove(<Natura:barleyFood:1>); // Natura flour
recipes.remove(<Natura:barleyFood:2>); // Natura flour
recipes.remove(<Natura:barleyFood:4>); // Natura sulfur
recipes.remove(<Natura:natura.stewbowl>);
recipes.remove(<MineFactoryReloaded:machine.0:7>); // Block Breaker
recipes.remove(<ThermalExpansion:Device:3>); // Terrain Smasher
recipes.remove(<JABBA:moverDiamond>);
recipes.remove(<ThermalFoundation:lexicon>); // Forge Lexicon crashes the game
recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);
recipes.remove(<customnpcs:npcMagicWand>);
recipes.remove(<customnpcs:npcWand>);
recipes.remove(<ExtraUtilities:dark_portal>); // Deep Dark portal
recipes.removeShaped(<ThaumicTinkerer:wardSlab:0>);
mods.thermalexpansion.Pulverizer.removeRecipe(<appliedenergistics2:tile.BlockSkyStone>); // Useless skystone dust
recipes.remove(<ThaumicTinkerer:kamiResource:3>); // Useless ichorium nuggets