import mods.nei.NEI;

NEI.hide(<cookingbook:recipebook:3>);
recipes.remove(<cookingbook:recipebook:3>);

recipes.remove(<cookingbook:recipebook:1>);
recipes.addShapeless(<cookingbook:recipebook:1>, [<cookingbook:recipebook>, <minecraft:crafting_table>]);

<cookingbook:recipebook>.addTooltip("Will hang for a couple of");
<cookingbook:recipebook>.addTooltip("seconds when first opened.");