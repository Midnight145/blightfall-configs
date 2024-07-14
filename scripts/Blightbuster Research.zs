print("SCRIPT: Blightbuster Research");

// Silverleaf Potion Research

mods.thaumcraft.Research.addResearch("SILVERPOTION", "ALCHEMY", "aqua 3, sano 6, vitium 3, herba 3", -1, -4, 2, <blightbuster:silverPotion>);
mods.thaumcraft.Arcane.addShaped("SILVERPOTION", <blightbuster:silverPotion> * 6, "aqua 15, ordo 24", [[<minecraft:glass_bottle>, <Thaumcraft:blockMagicalLeaves:1>, <minecraft:glass_bottle>]]);
mods.thaumcraft.Research.addPage("SILVERPOTION", "tc.research_page.SILVERPOTION.1");
mods.thaumcraft.Research.addArcanePage("SILVERPOTION", <blightbuster:silverPotion>);
mods.thaumcraft.Research.addPrereq("SILVERPOTION", "ETHEREALBLOOM", false);
mods.thaumcraft.Research.setConcealed("SILVERPOTION", true);

// Purity Focus Research

mods.thaumcraft.Research.addResearch("PURITYFOCUS", "ALCHEMY", "instrumentum 3, sano 6, vitium 3, praecantatio 3", -3, -4, 2, <blightbuster:purityFocus>);
mods.thaumcraft.Arcane.addShaped("PURITYFOCUS", <blightbuster:purityFocus>, "aqua 5, ordo 8", [[<Thaumcraft:ItemShard:4>, <minecraft:quartz>, <Thaumcraft:ItemShard:4>], [<minecraft:quartz>, <Thaumcraft:blockCustomPlant:4>, <minecraft:quartz>], [<Thaumcraft:ItemShard:4>, <minecraft:quartz>, <Thaumcraft:ItemShard:4>]]);
mods.thaumcraft.Research.addPage("PURITYFOCUS", "tc.research_page.PURITYFOCUS.1");
mods.thaumcraft.Research.addArcanePage("PURITYFOCUS", <blightbuster:purityFocus>);
mods.thaumcraft.Research.addPrereq("PURITYFOCUS", "ETHEREALBLOOM", false);
mods.thaumcraft.Research.setConcealed("PURITYFOCUS", true);

// Dawn Totem Research

mods.thaumcraft.Research.addResearch("DAWNTOTEM", "ALCHEMY", "auram 6, sano 8, vitium 3, praecantatio 6", -2, -6, 2, <blightbuster:tile.blightbuster_dawnTotem>);
mods.thaumcraft.Infusion.addRecipe(
    "DAWNTOTEM", 
    <Thaumcraft:blockMagicalLog:1>, 
    [
        <Thaumcraft:blockCustomPlant:4>, 
        <Thaumcraft:blockCustomPlant:4>, 
        <Thaumcraft:blockCosmeticSolid:3>, 
        <Thaumcraft:blockCosmeticSolid:3>, 
        <Thaumcraft:blockCrystal:4>
    ],
    "sano 32, victus 48, lux 16, tutamen 32, ordo 48",
    <blightbuster:tile.blightbuster_dawnTotem>, 6
);
mods.thaumcraft.Research.addPage("DAWNTOTEM", "tc.research_page.DAWNTOTEM.1");
mods.thaumcraft.Research.addInfusionPage("DAWNTOTEM", <blightbuster:tile.blightbuster_dawnTotem>);
mods.thaumcraft.Research.addPrereq("DAWNTOTEM", "ETHEREALBLOOM", false);
mods.thaumcraft.Research.setConcealed("DAWNTOTEM", true);

// Dawn Charger Research

print("SCRIPT: Dawn Charger Research");

mods.thaumcraft.Research.addResearch("DAWNCHARGER", "ALCHEMY", "aqua 3, sano 6, vitium 3, herba 3", -4, -6, 7, <blightbuster:dawnCharger>);
mods.thaumcraft.Arcane.addShaped("DAWNCHARGER", <blightbuster:dawnCharger>, "aqua 25, ordo 25, terra 25, perditio 25, ignis 25", [[<Thaumcraft:blockMagicalLog:1>, <Thaumcraft:blockMagicalLog:1>, <Thaumcraft:blockMagicalLog:1>], [<Thaumcraft:blockMagicalLog:1>, <ThermalExpansion:Frame:7>, <Thaumcraft:blockMagicalLog:1>], [<Thaumcraft:blockMagicalLog:1>, <Thaumcraft:blockMagicalLog:1>, <Thaumcraft:blockMagicalLog:1>]]);
mods.thaumcraft.Research.addPage("DAWNCHARGER", "tc.research_page.DAWNCHARGER.1");
mods.thaumcraft.Research.addArcanePage("DAWNCHARGER", <blightbuster:dawnCharger>);
mods.thaumcraft.Research.addPrereq("DAWNCHARGER", "DAWNOFFERING", false);
mods.thaumcraft.Research.setConcealed("DAWNCHARGER", true);

// Dawn Offering Research

mods.thaumcraft.Research.addResearch("DAWNOFFERING", "ALCHEMY", "machina 16, motus 4, alienis 4", -4, -8, 4, <blightbuster:tile.blightbuster_offering>);
mods.thaumcraft.Infusion.addRecipe("DAWNOFFERING", <minecraft:obsidian>, [<Translocator:diamondNugget>], "motus 8, alienis 4", <blightbuster:tile.blightbuster_offering>, 4);
mods.thaumcraft.Research.addPage("DAWNOFFERING", "tc.research_page.DAWNOFFERING.1");
mods.thaumcraft.Research.addInfusionPage("DAWNOFFERING", <blightbuster:tile.blightbuster_offering>);
mods.thaumcraft.Research.addPrereq("DAWNOFFERING", "DAWNMACHINE", false);

// Dawn Machine Research

mods.thaumcraft.Research.addResearch("DAWNMACHINE", "ALCHEMY", "machina 32, aer 4, ignis 4, ordo 4, arbor 4, auram 4, cognitio 4, fabrico 4, herba 4, potentia 4, sano 4, vacuos 4,", -2, -8, 4, <blightbuster:tile.blightbuster_cyberTotem>);

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <ThaumicTinkerer:kamiResource:0>, <ThaumicTinkerer:kamiResource:0>

    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:0>, 10
);

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <Botania:manaResource:14>, <Botania:manaResource:14>
    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:0>, 10
);

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <AWWayofTime:bloodMagicBaseItems:28>, <AWWayofTime:bloodMagicBaseItems:29>
    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:0>, 10
);

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <BigReactors:BRMetalBlock:4>, <appliedenergistics2:item.ItemMultiMaterial:38>
    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:0>, 10
);

// These recipes are duplicated so I can show all four in the book while still showing all four in NEI

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <Botania:manaResource:14>, <Botania:manaResource:14>
    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:1>, 10);

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <AWWayofTime:bloodMagicBaseItems:28>, <AWWayofTime:bloodMagicBaseItems:29>
    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:2>, 10
);

mods.thaumcraft.Infusion.addRecipe(
    "DAWNMACHINE", 
    <blightbuster:tile.blightbuster_dawnTotem>, 
    [
        <Thaumcraft:blockJar>,
        <ThermalFoundation:material:139>,
        <ThermalFoundation:material:138>,
        <blightbuster:purityFocus>, <blightbuster:purityFocus>,
        <thaumicenergistics:material>, <thaumicenergistics:material:1>,
        <Thaumcraft:blockTube:3>, <Thaumcraft:blockTube:3>,
        <Botania:pool>,
        <appliedenergistics2:item.ItemMultiMaterial:23>, <appliedenergistics2:item.ItemMultiMaterial:23>, 
        <BigReactors:BRMetalBlock:4>, <appliedenergistics2:item.ItemMultiMaterial:38>
    ], 
    "machina 64, aer 64, ignis 64, ordo 64, arbor 64, auram 64, cognitio 64, herba 64, sano 64, vacuos 64,", 
    <blightbuster:tile.blightbuster_cyberTotem:3>, 10
);

mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.1");
mods.thaumcraft.Research.addInfusionPage("DAWNMACHINE", <blightbuster:tile.blightbuster_cyberTotem:0>);
mods.thaumcraft.Research.addInfusionPage("DAWNMACHINE", <blightbuster:tile.blightbuster_cyberTotem:1>);
mods.thaumcraft.Research.addInfusionPage("DAWNMACHINE", <blightbuster:tile.blightbuster_cyberTotem:2>);
mods.thaumcraft.Research.addInfusionPage("DAWNMACHINE", <blightbuster:tile.blightbuster_cyberTotem:3>);
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.2");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.3");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.4");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.5");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.6");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.7");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.8");
mods.thaumcraft.Research.addPage("DAWNMACHINE", "tc.research_page.DAWNMACHINE.9");

mods.thaumcraft.Research.addPrereq("DAWNMACHINE", "INFUSION", false);
mods.thaumcraft.Research.addPrereq("DAWNMACHINE", "DAWNTOTEM", false);

