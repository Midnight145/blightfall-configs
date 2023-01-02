import mods.nei.NEI;

recipes.remove(<ChickenChunks:chickenChunkLoader>);
recipes.remove(<ChickenChunks:chickenChunkLoader:1>);

mods.thaumcraft.Research.addResearch("CHICKENCHUNKS", "ARTIFICE", "ordo 5, perditio 5, alienis 5, vacuos 5, desidia 5", -4, 9, 4, <ChickenChunks:chickenChunkLoader>);

game.setLocalization("en_US", "tc.research_name.CHICKENCHUNKS", "Chunk Loader");
game.setLocalization("en_US", "tc.research_text.CHICKENCHUNKS", "It's hard not to break the fourth wall here...");
game.setLocalization("en_US", "cavestokingdoms.research_page.CHICKENCHUNKS1", "Many things in this world seem not to work unless you are directly observing them. You're not sure why. Probably it has something to do with quantum physics. For the most part, this is a good thing, as trees will not collapse and swarmers will not form unless you are close enough to deal with the ramifications right away. However, it can get annoying if you are forced to watch your blooms or totems slowly clean land.");
game.setLocalization("en_US", "cavestokingdoms.research_page.CHICKENCHUNKS2", "To solve this problem, you have created the Ender Observer. It is a tiny device that watches a 16 meter x 16 meter area, keeping everything running as though you were personally present.<BR>Multiple ender watchers can be combined into and ender overseer using an infusion ritual. The ender overseer can observe (and thus cause time to pass in) an area nearly a third of a kilometer to a side, and is also highly configurable.");

mods.thaumcraft.Arcane.addShaped("CHICKENCHUNKS", <ChickenChunks:chickenChunkLoader:1> * 2, "ordo 16",
[[null, <minecraft:gold_nugget>,null],
[<minecraft:gold_nugget>, <minecraft:ender_pearl>, <minecraft:gold_nugget>],
[null, <minecraft:obsidian>, null]]);

mods.thaumcraft.Infusion.addRecipe("CHICKENCHUNKS", <minecraft:obsidian>, [<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>,<ChickenChunks:chickenChunkLoader:1>], "vacuos 8, alienis 4, desidia 16", <ChickenChunks:chickenChunkLoader>, 6);

mods.thaumcraft.Research.addPage("CHICKENCHUNKS", "cavestokingdoms.research_page.CHICKENCHUNKS1");
mods.thaumcraft.Research.addPage("CHICKENCHUNKS", "cavestokingdoms.research_page.CHICKENCHUNKS2");
mods.thaumcraft.Research.addArcanePage("CHICKENCHUNKS", <ChickenChunks:chickenChunkLoader:1>);
mods.thaumcraft.Research.addInfusionPage("CHICKENCHUNKS", <ChickenChunks:chickenChunkLoader>);

mods.thaumcraft.Research.addPrereq("CHICKENCHUNKS", "INFUSION", false);

<ChickenChunks:chickenChunkLoader:1>.displayName = "Ender Watcher";
<ChickenChunks:chickenChunkLoader:1>.addTooltip("Also known as a Spot Loader");

<ChickenChunks:chickenChunkLoader:0>.displayName = "Ender Overseer";
<ChickenChunks:chickenChunkLoader:0>.addTooltip("Also known as a Chunk Loader");