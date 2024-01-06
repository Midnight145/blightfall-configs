print("SCRIPT: Blood Magic Diamond Tools");

//Add Alchemical chemistry set recipe to create Diamond Tools using Blood Magic
mods.bloodmagic.Alchemy.addRecipe(<minecraft:diamond_sword>, [<minecraft:stick>, <TConstruct:swordBlade:1>, <minecraft:diamond>, <minecraft:diamond>], 3, 2000);
mods.bloodmagic.Alchemy.addRecipe(<minecraft:diamond_pickaxe>, [<minecraft:stick>, <TConstruct:pickaxeHead:1>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 3, 2000);
mods.bloodmagic.Alchemy.addRecipe(<minecraft:diamond_axe>, [<minecraft:stick>, <TConstruct:hatchetHead:1>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 3, 2000);
mods.bloodmagic.Alchemy.addRecipe(<minecraft:diamond_shovel>, [<minecraft:stick>, <TConstruct:shovelHead:1>, <minecraft:diamond>], 3, 2000);

//Add Alchemical chemistry set recipe to create Stone Swords using Blood Magic
mods.bloodmagic.Alchemy.addRecipe(<minecraft:stone_sword>, [<minecraft:stick>, <TConstruct:swordBlade:1>, <minecraft:cobblestone>, <minecraft:cobblestone>], 3, 2000);
