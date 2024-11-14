print("SCRIPT: EFR Fixes");

// Smooth quartz recipe conflict with ExU burnt quartz
furnace.remove(<etfuturum:smooth_quartz>);
recipes.addShapeless(<etfuturum:smooth_quartz> * 1, [<minecraft:quartz_block>]);

// Add thaumcraft aspects
// (Chest) boats
mods.thaumcraft.Aspects.setEntity("etfuturum.new_boat", "aqua 4, iter 4, arbor 3");
mods.thaumcraft.Aspects.setEntity("etfuturum.chest_boat", "aqua 4, iter 4, vacuos 4, arbor 6");
mods.thaumcraft.Aspects.set(<etfuturum:bamboo_raft>, "aqua 4, iter 4, arbor 3");
mods.thaumcraft.Aspects.set(<etfuturum:bamboo_chest_raft>, "aqua 4, iter 4, vacuos 4, arbor 6");
mods.thaumcraft.Aspects.add(<etfuturum:spruce_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:acacia_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:birch_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:dark_oak_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:jungle_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:oak_chest_boat>, "vacuos 4, arbor 3");

// Beds

for bed in <ore:bedWood>.items {
    mods.thaumcraft.Aspects.set(bed, "pannus 6, desidia 4, fabrico 3");
}

// Other
mods.thaumcraft.Aspects.add(<etfuturum:observer>, "invidia 2"); // Match comparator
mods.thaumcraft.Aspects.add(<etfuturum:lantern>, "lux 2");
mods.thaumcraft.Aspects.add(<etfuturum:composter>, "permutatio 2");
mods.thaumcraft.Aspects.add(<etfuturum:barrel>, "vacuos 4"); // Match chest
mods.thaumcraft.Aspects.add(<etfuturum:iron_trapdoor>, "machina 2, motus 1, "); // Match iron door
mods.thaumcraft.Aspects.set(<etfuturum:end_bricks:*>, "terra 1, tenebrae 1");
mods.thaumcraft.Aspects.set(<etfuturum:coarse_dirt:*>, "terra 2");
mods.thaumcraft.Aspects.set(<etfuturum:blackstone:*>, "tenebrae 1, terra 1");
mods.thaumcraft.Aspects.set(<etfuturum:gilded_blackstone>, "lucrum 1, tenebrae 1");
mods.thaumcraft.Aspects.set(<etfuturum:polished_blackstone_pressure_plate>, "tenebrae 1, machina 1, sensus 1");
mods.thaumcraft.Aspects.set(<etfuturum:honeycomb>, "ordo 2, fames 1"); // Match Natura
mods.thaumcraft.Aspects.set(<etfuturum:honey_bottle>, "fames 2, vinculum 1, sano 1");
mods.thaumcraft.Aspects.set(<etfuturum:honey_block>, "fames 7, vinculum 3, sano 3");
mods.thaumcraft.Aspects.set(<etfuturum:end_crystal>, "alienis 3, praecantatio 3, sano 3"); // Match entity
mods.thaumcraft.Aspects.set(<etfuturum:dye:*>, "sensus 1");
mods.thaumcraft.Aspects.addEntity("etfuturum.wooden_armorstand", "arbor 4, tutamen 1");
mods.thaumcraft.Aspects.add(<etfuturum:wooden_armorstand>, "tutamen 1");
mods.thaumcraft.Aspects.add(<etfuturum:banner:*>, "sensus 2");

// Chain Recycling
mods.tconstruct.Smeltery.addMelting(<etfuturum:chain>, <liquid:iron.molten> * 176, 600, <minecraft:iron_block>);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <etfuturum:chain>, <ThermalFoundation:material:0>, <Thaumcraft:ItemNugget:0> * 2, 100);

// Blackstone
mods.thaumcraft.Research.addResearch("BLACKSTONE", "ARTIFICE", "terra 4, tenebrae 3", 5, -4, 0, <etfuturum:blackstone:0>);
mods.thaumcraft.Research.setSecondary("BLACKSTONE", true);
game.setLocalization("en_US", "tc.research_name.BLACKSTONE", "Blackstone");
game.setLocalization("en_US", "tc.research_text.BLACKSTONE", "[BF] Making things pretty");

mods.thaumcraft.Arcane.addShaped("BLACKSTONE", <etfuturum:blackstone:0> * 4, "perditio 5", [[null, <MineFactoryReloaded:stone:2>,null],[<MineFactoryReloaded:stone:2>, <Thaumcraft:ItemShard:5>, <MineFactoryReloaded:stone:2>],[null, <MineFactoryReloaded:stone:2>, null]]);
mods.thaumcraft.Crucible.addRecipe("BLACKSTONE", <etfuturum:gilded_blackstone>, <etfuturum:blackstone:*>, "lucrum 1");

game.setLocalization("en_US", "tc.research_page.BLACKSTONE.1", 'You have seen visions from what you can only assume is a time far removed from your own. These visions have shown you large structures in the Nether inhabited by brutish pig-man hybrids who are obsessed with gold. These "bastions" were composed of dark stone blocks, which have particularly piqued your interest for their decorative potential. Using the same principle as arcane stone, exposing some mundane blackstone cobble to the energy emitted by an entropy shard allows you to fabricate some of those blocks.');
game.setLocalization("en_US", "tc.research_page.BLACKSTONE.2", "You can create a block of gilded blackstone by exposing any of these blackstone blocks to lucrum essentia in a crucible. This block seemed to be highly prized by those creatures in your visions.");
mods.thaumcraft.Research.addPage("BLACKSTONE", "tc.research_page.BLACKSTONE.1");
mods.thaumcraft.Research.addArcanePage("BLACKSTONE", <etfuturum:blackstone:0>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone:1>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone:2>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone:4>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone_wall:0>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone_wall:1>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone_wall:2>);
mods.thaumcraft.Research.addPage("BLACKSTONE", "tc.research_page.BLACKSTONE.2");
mods.thaumcraft.Research.addCruciblePage("BLACKSTONE", <etfuturum:gilded_blackstone>);
mods.thaumcraft.Research.addPrereq("BLACKSTONE", "ARCANESTONE", false);

// Elytra
mods.thaumcraft.Research.addResearch("ELYTRA", "ARTIFICE", "volatus 4, motus 4, alienis 3, tutamen 0, praecantatio 0", 2, 6, 5, <etfuturum:elytra>);
game.setLocalization("en_US", "tc.research_name.ELYTRA", "Elytra");
game.setLocalization("en_US", "tc.research_text.ELYTRA", "[BF] Stick a feather in your cap");
game.setLocalization("en_US", "tc.research_page.ELYTRA.1", 'While the thaumostatic harness certainly does its job in allowing you to fly, it lacks a certain... grace to its movements. Dragons and bats are able to cut through the air with ease, but you lack the wings that they have. That is, until today. By adding feathers, leather, and air shards to a belt and infusing it with essentia to aid in mobility and emulate the great Ender Dragon, you have created a piece of equipment that you have dubbed "Elytra".');
game.setLocalization("en_US", "tc.research_page.ELYTRA.2", "While equipped on your body or wings slot, you are able to deploy the wings behind you by jumping in midair. Unlike the mighty dragon or even the lowly bat, you are unable to flap your wings to gain velocity while flying. However, these wings allow gliding over long distances and performing deft acrobatic maneuvers with your momentum while in flight.");
game.setLocalization("en_US", "tc.research_page.ELYTRA.3", "While you may be unable to flap your wings to gain speed, it is possible to launch yourself a great distance through the use of firework rockets. Despite defying all reason, firework rockets containing explosive charges seem to not damage the user. Caution must be taken to land gently, or a hasty thaumaturge will meet his end due to the kinetic forces exerted upon his body.");
game.setLocalization("en_US", "tc.research_page.ELYTRA.4", "The elytra will slowly take damage while in flight. This can be mitigated by the Unbreaking enchantment, which can be applied by an anvil or through infusion enchanting. Other means of enchanting, such as the enchantment table, seem to be unable to operate upon the elytra. Damaged elytra may be repaired with leather in an anvil or through other, more magical means.");
mods.thaumcraft.Infusion.addRecipe("ELYTRA", <Thaumcraft:ItemBaubleBlanks:2>, [<minecraft:feather>, <minecraft:leather>, <minecraft:feather>, <minecraft:leather>, <Thaumcraft:ItemShard:0>, <minecraft:feather>, <minecraft:leather>, <minecraft:feather>, <minecraft:leather>, <Thaumcraft:ItemShard:0>], "volatus 64, iter 32, aer 32, alienis 16", <etfuturum:elytra>, 9);
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.1");
mods.thaumcraft.Research.addInfusionPage("ELYTRA", <etfuturum:elytra>);
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.2");
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.3");
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.4");
mods.thaumcraft.Research.addPrereq("ELYTRA", "HOVERHARNESS", false);
