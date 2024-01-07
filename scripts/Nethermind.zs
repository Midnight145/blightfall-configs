print("SCRIPT: Nethermind");

mods.thaumcraft.Infusion.addRecipe(
	"NETHERMIND",
	<minecraft:ghast_tear>,
	[
		<minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>, <minecraft:blaze_rod>,
		<minecraft:netherrack>, <minecraft:netherrack>,
		<minecraft:obsidian>, <minecraft:obsidian>,
		<minecraft:leather>
	],
	"infernus 16, ira 16, permutatio 16, praecantatio 32",
	<Automagy:netherHeart>,
	6
);
mods.thaumcraft.Research.addInfusionPage("NETHERMIND", <Automagy:netherHeart>);