print("SCRIPT: Taint Egg");

mods.thaumcraft.Research.addResearch("TAINTEGG", "ELDRITCH", "vitium 128, praecantatio 128", 0, 2, 8, <Thaumcraft:ItemSpawnerEgg:28>);
mods.thaumcraft.Research.addPrereq("TAINTEGG", "TAINTSHOVEL", false);
mods.thaumcraft.Research.addPrereq("TAINTEGG", "BOTTLETAINT");
mods.thaumcraft.Research.addPrereq("TAINTEGG", "PRIMPEARL");

mods.thaumcraft.Research.setSpikey("TAINTEGG", true);
mods.thaumcraft.Research.setConcealed("TAINTEGG", true);

mods.thaumcraft.Warp.addToResearch("TAINTEGG", 25);
mods.thaumcraft.Warp.addToItem(<Thaumcraft:ItemSpawnerEgg:28>, 5);

mods.thaumcraft.Infusion.addRecipe(
	"TAINTEGG",
	<minecraft:egg>,
	[
		<Thaumcraft:ItemEldritchObject:3>, <Thaumcraft:ItemEldritchObject:3>,
		<Thaumcraft:ItemBottleTaint>, <Thaumcraft:ItemBottleTaint>, <Thaumcraft:ItemBottleTaint>, <Thaumcraft:ItemBottleTaint>,
		<ForbiddenMagic:NetherShard:2>, <ForbiddenMagic:NetherShard:2>, <ForbiddenMagic:NetherShard:2>, <ForbiddenMagic:NetherShard:2>,
		<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemResource:17>,
		<Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:12>, <Thaumcraft:ItemResource:12>
	],
	"vitium 128, victus 64, bestia 64, praecantatio 64, ignis 64, ordo 64, aer 64, perditio 64, aqua 64, terra 64",
	<Thaumcraft:ItemSpawnerEgg:28>,
	25
);

mods.thaumcraft.Research.addPage("TAINTEGG", "blightbuster.research_page.TAINTEGG_1");
mods.thaumcraft.Research.addPage("TAINTEGG", "blightbuster.research_page.TAINTEGG_2");
game.setLocalization("en_US", "blightbuster.research_page.TAINTEGG_1", "The Primordial Pearl resonates with energies that are fundamentally different from the magic of this reality, and yet these energies readily fuse with so many parts of this world. Perhaps this is, objectively, more unsettling than I find it to be, but I have already done so much in the pursuit of knowledge.<BR>I've studied much of this world, and I've learned so much from it. I've studied magic, I've studied taint, I've studied--and been to--the void...and I've studied the Pearl.");
game.setLocalization("en_US", "blightbuster.research_page.TAINTEGG_2", "Perhaps it was the Warp that compelled me to perform this research, or perhaps it was only my curious nature and thirst for knowledge. The line between the two is thinner than I'd like to admit.<BR>I have built upon the Taint, and designed the means to summon--nay, to spawn--a monstrosity far beyond anything this planet has seen. To create life in this way, or even a corrupt and twisted facsimile of life, will be a major undertaking.<LINE>I hold the means to be the savior of this world; it only seems fitting that I hold the means to be its destroyer.");
game.setLocalization("tc.research_name.TAINTEGG", "Giant Taintacle");
game.setLocalization("tc.research_text.TAINTEGG", "It was either this or an ASM patch...");

mods.thaumcraft.Research.addInfusionPage("TAINTEGG", <Thaumcraft:ItemSpawnerEgg:28>);
