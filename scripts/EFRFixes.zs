print("SCRIPT: EFR Fixes");

// Smooth quartz recipe conflict with ExU burnt quartz
furnace.remove(<etfuturum:smooth_quartz>);
recipes.addShapeless(<etfuturum:smooth_quartz> * 1, [<minecraft:quartz_block>]);

// Boat seat localization for thaumometer
game.setLocalization("entity.etfuturum.new_boat_seat.name", "Boat");

// Armor stand localization
game.setLocalization("entity.etfuturum.wooden_armorstand.name", "Armor Stand");
game.setLocalization("<etfuturum:wooden_armorstand>", "Armor Stand");

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
mods.thaumcraft.Aspects.set(<etfuturum:pink_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:light_gray_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:purple_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:green_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:gray_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:orange_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:blue_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:brown_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:white_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:black_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:lime_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:magenta_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:cyan_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:yellow_bed>, "pannus 6, desidia 4, fabrico 3");
mods.thaumcraft.Aspects.set(<etfuturum:light_blue_bed>, "pannus 6, desidia 4, fabrico 3");

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

