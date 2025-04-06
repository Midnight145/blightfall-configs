print("SCRIPT: Blockheads");

// Disable #NoFilter Edition because it shows disabled items
recipes.remove(<cookingforblockheads:recipebook:3>);

recipes.remove(<cookingforblockheads:recipebook:1>);
recipes.addShapeless(<cookingforblockheads:recipebook:1>, [<cookingforblockheads:recipebook>, <minecraft:crafting_table>]);

<cookingforblockheads:recipebook>.addTooltip("Will hang for a couple of");
<cookingforblockheads:recipebook>.addTooltip("seconds when first opened.");

// Makes CFB tool racks cheaper like in newer versions & use any wood type
val plate = <ore:pressurePlateWood>;
val ironNugget = <ore:nuggetIron>;
recipes.remove(<cookingforblockheads:toolrack:0>);
recipes.addShaped(<cookingforblockheads:toolrack:0>, [[plate, plate, plate], [ironNugget, null, ironNugget]]);
