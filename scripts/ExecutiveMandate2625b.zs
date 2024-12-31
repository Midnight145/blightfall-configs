# Vanilla tools only have 1 durability from B:"Remove Vanilla Tool Effectiveness"=true in TinkersConstruct.cfg
# Mining levels are all set to 0 in 
import minetweaker.item.IItemStack;

print("SCRIPT: Executive Mandate");

var line1 = format.darkRed("Use is " + format.bold("prohibited") + " under " + format.bold("Executive Mandate 2625b."));
var line2 = format.darkRed("This item will " + format.bold("self-destruct") + " if used.");

for t in [<minecraft:iron_shovel>, <minecraft:wooden_shovel>, <minecraft:stone_shovel>, <minecraft:golden_shovel>, <minecraft:diamond_shovel>, <minecraft:iron_pickaxe>, <minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:diamond_pickaxe>, <minecraft:iron_axe>, <minecraft:wooden_axe>, <minecraft:stone_axe>, <minecraft:golden_axe>, <minecraft:diamond_axe>, <minecraft:iron_sword>, <minecraft:wooden_sword>, <minecraft:stone_sword>, <minecraft:golden_sword>, <minecraft:diamond_sword>, <minecraft:iron_hoe>, <minecraft:wooden_hoe>, <minecraft:stone_hoe>, <minecraft:golden_hoe>, <minecraft:diamond_hoe>] as IItemStack[] {
	t.addTooltip(line1);
	t.addTooltip(line2);
}