
recipes.addShaped(<TabulaRasa:RasaItem0:21>, [[null, <minecraft:gold_ingot>, null], [<minecraft:gold_ingot>, <minecraft:nether_star>, <minecraft:gold_ingot>], [<ore:ingotUnstable>, <minecraft:gold_ingot>, <ore:ingotUnstable>]]);

recipes.remove(<ExtraUtilities:angelRing:0>);
recipes.remove(<ExtraUtilities:angelRing:1>);
recipes.remove(<ExtraUtilities:angelRing:2>);
recipes.remove(<ExtraUtilities:angelRing:3>);
recipes.remove(<ExtraUtilities:angelRing:4>);

mods.thaumcraft.Research.addResearch("ANGELRING", "ARTIFICE", "volatus 8, aer 8, ordo 8, fabrico 8", -6, 8, 4, <TabulaRasa:RasaItem0:21>);
game.setLocalization("en_US", "tc.research_name.ANGELRING", "Angel Rings");
game.setLocalization("en_US", "tc.research_text.ANGELRING", "More simple than jetpacks");
game.setLocalization("en_US", "cavestokingdoms.research_page.ANGELRING", "Flight is important, and a thaumostatic harness is great, but there comes a time where you want to jettison the bulky thaumic apparatus and fly in a more natural way.<BR>You decided to create a ring with flight capabilties. Simply having this ring in your inventory will grant you the ability to fly, as if you were in creative mode.<BR>This ring comes in five varieties. They differ only cosmetically.");
mods.thaumcraft.Infusion.addRecipe("ANGELRING", <TabulaRasa:RasaItem0:21>, [<ExtraTiC:toughrod:123>, <minecraft:feather>, <minecraft:feather>, <ExtraTiC:toughrod:123>, <minecraft:feather>, <minecraft:feather>], "aer 32, volatus 64, ordo 24", <ExtraUtilities:angelRing:1>, 6);
mods.thaumcraft.Infusion.addRecipe("ANGELRING", <TabulaRasa:RasaItem0:21>, [<ExtraTiC:toughrod:142>, <Botania:manaResource:8>, <ExtraTiC:toughrod:142>, <Botania:manaResource:8>], "aer 32, volatus 64, lux 24", <ExtraUtilities:angelRing:2>, 6);
mods.thaumcraft.Infusion.addRecipe("ANGELRING", <TabulaRasa:RasaItem0:21>, [<ExtraTiC:toughrod:113>, <minecraft:leather>, <minecraft:leather>, <ExtraTiC:toughrod:113>, <minecraft:leather>, <minecraft:leather>], "aer 32, volatus 64, superbia 24", <ExtraUtilities:angelRing:3>, 6);
mods.thaumcraft.Infusion.addRecipe("ANGELRING", <TabulaRasa:RasaItem0:21>, [<ExtraTiC:toughrod:120>, <minecraft:gold_ingot>, <ExtraTiC:toughrod:120>, <minecraft:gold_ingot>], "aer 32, volatus 64, lucrum 24", <ExtraUtilities:angelRing:4>, 6);
mods.thaumcraft.Infusion.addRecipe("ANGELRING", <TabulaRasa:RasaItem0:21>, [<AWWayofTime:bloodMagicBaseItems>, <Botania:elfGlass>, <Botania:elfGlass>, <AWWayofTime:bloodMagicBaseItems>, <Botania:elfGlass>, <Botania:elfGlass>], "aer 32, volatus 64, vitreus 24", <ExtraUtilities:angelRing:0>, 6);
mods.thaumcraft.Research.addPage("ANGELRING", "cavestokingdoms.research_page.ANGELRING");
mods.thaumcraft.Research.addCraftingPage("ANGELRING", <TabulaRasa:RasaItem0:21>);
mods.thaumcraft.Research.addInfusionPage("ANGELRING", <ExtraUtilities:angelRing:1>);
mods.thaumcraft.Research.addInfusionPage("ANGELRING", <ExtraUtilities:angelRing:2>);
mods.thaumcraft.Research.addInfusionPage("ANGELRING", <ExtraUtilities:angelRing:3>);
mods.thaumcraft.Research.addInfusionPage("ANGELRING", <ExtraUtilities:angelRing:4>);
mods.thaumcraft.Research.addInfusionPage("ANGELRING", <ExtraUtilities:angelRing:0>);

mods.thaumcraft.Research.addPrereq("ANGELRING", "INFUSION", false);