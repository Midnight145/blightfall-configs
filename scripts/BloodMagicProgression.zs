print("SCRIPT: Blood Magic Progression");

// Remove Old Progression

recipes.removeShaped(<AWWayofTime:blockCrystal>);


// Research

mods.thaumcraft.Research.addResearch("TIERSIX", "FORBIDDEN", "victus 50, spiritus 50, alienis 50, infernus 50, exanimis 50, vitreus 50", -4, 0, 8, <AWWayofTime:blockCrystal>);
game.setLocalization("en_US", "tc.research_name.TIERSIX", "A Greater Altar");
game.setLocalization("en_US", "tc.research_text.TIERSIX", "When Tier 5 isn't enough...");

mods.thaumcraft.Research.addResearch("DAWNTOOL", "FORBIDDEN", "ordo 50, terra 50, aer 50, auram 50, instrumentum 50, lux 50", -3, 0, 8, <AWWayofTime:dawnScribeTool>);
game.setLocalization("en_US", "tc.research_name.DAWNTOOL", "A New Dawn");
game.setLocalization("en_US", "tc.research_text.DAWNTOOL", "What's Tier 6?");

mods.thaumcraft.Research.addPrereq("TIERSIX", "BLOODMAGIC", false);
mods.thaumcraft.Research.addPrereq("TIERSIX", "DAWNTOOL", false);
mods.thaumcraft.Research.addPrereq("DAWNTOOL", "BLOODMAGIC", false);
mods.thaumcraft.Research.addPrereq("DAWNTOOL", "DAWNMACHINE", false);
mods.thaumcraft.Research.setConcealed("TIERSIX", true);
mods.thaumcraft.Research.setConcealed("DAWNTOOL", true);

// Recipes

// Crystal Cluster
mods.thaumcraft.Arcane.addShaped("TIERSIX", <AWWayofTime:blockCrystal> * 2, "ordo 50, terra 50, perditio 50, ignis 50, aqua 50, aer 50", [[<AWWayofTime:bloodMagicBaseItems:28>, <AWWayofTime:bloodMagicBaseItems:29>], [<AWWayofTime:bloodMagicBaseItems:29>, <AWWayofTime:bloodMagicBaseItems:28>]]);

// Life Shard
mods.thaumcraft.Infusion.addRecipe("TIERSIX", <AWWayofTime:weakBloodShard>, [<AWWayofTime:magicales>, <AWWayofTime:bloodMagicBaseAlchemyItems:8>, <AWWayofTime:incendium>, <AWWayofTime:terrae>, <AWWayofTime:tennebrae>, <AWWayofTime:sanctus>, <AWWayofTime:aether>, <AWWayofTime:aquasalus>, <AWWayofTime:bucketLife>, <AWWayofTime:bucketLife>, <AWWayofTime:bloodMagicBaseItems:27>, <AWWayofTime:greaterPowerCatalyst>], "victus 16, spiritus 16, alienis 16, infernus 16, exanimis 16, vitreus 16", <AWWayofTime:bloodMagicBaseItems:28> * 2, 12);

mods.thaumcraft.Infusion.addRecipe("TIERSIX", <AWWayofTime:demonBloodShard>, [<AWWayofTime:magicales>, <AWWayofTime:bloodMagicBaseAlchemyItems:8>, <AWWayofTime:incendium>, <AWWayofTime:terrae>, <AWWayofTime:tennebrae>, <AWWayofTime:sanctus>, <AWWayofTime:aether>, <AWWayofTime:aquasalus>, <AWWayofTime:bucketLife>, <AWWayofTime:bucketLife>, <AWWayofTime:bloodMagicBaseItems:27>, <AWWayofTime:greaterLengtheningCatalyst>], "victus 16, spiritus 16, alienis 16, infernus 16, exanimis 16, vitreus 16", <AWWayofTime:bloodMagicBaseItems:29> * 2, 12);


mods.thaumcraft.Infusion.addRecipe("DAWNTOOL", <AWWayofTime:duskScribeTool>, [<AWWayofTime:bloodMagicBaseItems:27>, <AWWayofTime:bloodMagicBaseItems:27>, <AWWayofTime:fireScribeTool>, <AWWayofTime:waterScribeTool>, <AWWayofTime:earthScribeTool>, <AWWayofTime:airScribeTool>, <Thaumcraft:ItemResource:1>, <Thaumcraft:ItemResource:1>, <AWWayofTime:sanctus>, <AWWayofTime:sanctus>, <minecraft:glowstone>, <minecraft:glowstone>], "ordo 64, terra 64, aer 64, aqua 64, ignis 64, auram 64, instrumentum 64, lux 64", <AWWayofTime:dawnScribeTool>, 12);


// Research Pages

mods.thaumcraft.Research.addPage("TIERSIX", "blightbuster.research_page.TIERSIX");
game.setLocalization("en_US", "blightbuster.research_page.TIERSIX", "Despite their lust for power, most Blood Mages hit a ceiling with a Tier 5 altar. The raw energy of anything beyond is simply far too much for most materials to handle, and the use of Beacons at that point is the only thing that can barely keep things under control.<BR>Somehow, in opposition to the natural order, you have broken this ceiling. Inspired by the crystalline structure of Beacons, you have devised a crystal cluster infused with the essences of life and spirit to bind the raw life energy to the altar. They are quite expensive to make, but having made the decision to go down this path, they are worth the effort.");

mods.thaumcraft.Research.addInfusionPage("TIERSIX", <AWWayofTime:bloodMagicBaseItems:28>);
mods.thaumcraft.Research.addInfusionPage("TIERSIX", <AWWayofTime:bloodMagicBaseItems:29>);
mods.thaumcraft.Research.addArcanePage("TIERSIX", <AWWayofTime:blockCrystal>);


mods.thaumcraft.Research.addPage("DAWNTOOL", "blightbuster.research_page.DAWNTOOL");
game.setLocalization("en_US", "blightbuster.research_page.DAWNTOOL", "The Dark One has instructed you to create a ritual that will augment your Dawn Machine with life essence; however, you need to improve your ritual crafting.<BR>You have created a tool that will allow you to create Dawn Runes, the final bridge you need to link the two.");

mods.thaumcraft.Research.addInfusionPage("DAWNTOOL", <AWWayofTime:dawnScribeTool>);

mods.thaumcraft.Warp.addToResearch("TIERSIX", 5);
mods.thaumcraft.Warp.addToResearch("DAWNTOOL", 5);
