recipes.addShaped(<customnpcs:npcWoodenGun>, [[<ore:plankWood>, <ore:plankWood>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcStoneGun>, [[<ore:cobblestone>, <ore:cobblestone>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcGoldGun>, [[<ore:ingotGold>, <ore:ingotGold>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcBronzeGun>, [[<ore:ingotBronze>, <ore:ingotBronze>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcIronGun>, [[<ore:ingotIron>, <ore:ingotIron>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcDiamondGun>, [[<ore:gemDiamond>, <ore:gemDiamond>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcEmeraldGun>, [[<ore:gemEmerald>, <ore:gemEmerald>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);
recipes.addShaped(<customnpcs:npcMachineGun>, [[<ore:ingotSteel>, <ore:ingotSteel>, <minecraft:lever>], [null, <minecraft:stone_button>, <ore:plankWood>]]);

<customnpcs:npcWoodenGun>.addTooltip(format.blue("5 damage"));
<customnpcs:npcWoodenGun>.addTooltip("Only fires "+format.blue("Wooden Bullets"));
<customnpcs:npcWoodenGun>.addTooltip("Highly inaccurate.");

<customnpcs:npcStoneGun>.addTooltip(format.blue("6 damage"));
<customnpcs:npcStoneGun>.addTooltip("Only fires "+format.blue("Stone Bullets"));
<customnpcs:npcStoneGun>.addTooltip("Highly inaccurate.");

<customnpcs:npcGoldGun>.addTooltip(format.blue("6 damage"));
<customnpcs:npcGoldGun>.addTooltip("Only fires "+format.blue("Gold Bullets"));
<customnpcs:npcGoldGun>.addTooltip("Highly inaccurate. Why would");
<customnpcs:npcGoldGun>.addTooltip("you build this? Bling?");

<customnpcs:npcBronzeGun>.addTooltip(format.blue("7 damage"));
<customnpcs:npcBronzeGun>.addTooltip("Only fires "+format.blue("Bronze Bullets"));
<customnpcs:npcBronzeGun>.addTooltip("Highly inaccurate. You should consider");
<customnpcs:npcBronzeGun>.addTooltip("building an iron gun instead; it's cheaper.");

<customnpcs:npcIronGun>.addTooltip(format.blue("7 damage"));
<customnpcs:npcIronGun>.addTooltip("Only fires "+format.blue("Iron Bullets"));
<customnpcs:npcIronGun>.addTooltip("Highly inaccurate.");

<customnpcs:npcDiamondGun>.addTooltip(format.blue("8 damage"));
<customnpcs:npcDiamondGun>.addTooltip("Only fires "+format.blue("Diamond Bullets"));
<customnpcs:npcDiamondGun>.addTooltip("Highly inaccurate.");

<customnpcs:npcEmeraldGun>.addTooltip(format.blue("9 damage"));
<customnpcs:npcEmeraldGun>.addTooltip("Only fires "+format.blue("Emerald Bullets"));
<customnpcs:npcEmeraldGun>.addTooltip("Highly inaccurate.");

<customnpcs:npcMachineGun>.addTooltip(format.blue("4 damage"));
<customnpcs:npcMachineGun>.addTooltip("Only fires "+format.blue("Black Bullets"));
<customnpcs:npcMachineGun>.addTooltip("Highly inaccurate. Hold down");
<customnpcs:npcMachineGun>.addTooltip("right-click to fire. Once empty,");
<customnpcs:npcMachineGun>.addTooltip("Hold right-click to reload.");

recipes.addShapeless(<customnpcs:npcWoodenBullet> * 6, [<ore:plankWood>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcStoneBullet> * 6, [<ore:cobblestone>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcGoldenBullet> * 6, [<ore:ingotGold>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcBronzeBullet> * 6, [<ore:ingotBronze>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcIronBullet> * 6, [<ore:ingotIron>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcDiamondBullet> * 6, [<ore:gemDiamond>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcEmeraldBullet> * 6, [<ore:gemEmerald>, <minecraft:gunpowder>]);
recipes.addShapeless(<customnpcs:npcBlackBullet> * 12, [<ore:ingotSteel>, <minecraft:gunpowder>]);