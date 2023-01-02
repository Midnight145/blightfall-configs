val fames = <Thaumcraft:ItemManaBean>.withTag({Aspects: [{amount: 1, key: "fames"}]}).onlyWithTag({Aspects: [{amount: 1, key: "fames"}]});
val corpus = <Thaumcraft:ItemManaBean>.withTag({Aspects: [{amount: 1, key: "corpus"}]}).onlyWithTag({Aspects: [{amount: 1, key: "corpus"}]});
val gula = <Thaumcraft:ItemManaBean>.withTag({Aspects: [{amount: 1, key: "gula"}]}).onlyWithTag({Aspects: [{amount: 1, key: "gula"}]});

recipes.addShaped(<TabulaRasa:RasaItem0:29> * 2, [
[<harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1], 
[fames, <harvestcraft:butterItem>, fames],
[fames, <Botania:manaBottle>, fames]]);

recipes.addShaped(<TabulaRasa:RasaItem0:29> * 3, [
[<harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1], 
[gula, <harvestcraft:butterItem>, gula],
[gula, <Botania:manaBottle>.transformReplace(<minecraft:glass_bottle>), gula]]);

recipes.addShaped(<TabulaRasa:RasaItem0:29> * 4, [
[<harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1], 
[corpus, <harvestcraft:butterItem>, corpus],
[corpus, <Botania:manaBottle>.transformReplace(<minecraft:glass_bottle>), corpus]]);

recipes.addShaped(<TabulaRasa:RasaItem0:29> * 1, [
[<harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1, <harvestcraft:flourItem> * 1], 
[<Thaumcraft:ItemManaBean:*>, <harvestcraft:butterItem>, <Thaumcraft:ItemManaBean:*>],
[<Thaumcraft:ItemManaBean:*>, <Botania:manaBottle>.transformReplace(<minecraft:glass_bottle>), <Thaumcraft:ItemManaBean:*>]]);

furnace.addRecipe(<TabulaRasa:RasaItem0:28>, <TabulaRasa:RasaItem0:29>, 0.5);

mods.botania.ManaInfusion.removeRecipe(<Botania:manaCookie> * 1);
mods.botania.ManaInfusion.addInfusion(<Botania:manaCookie> * 1, <TabulaRasa:RasaItem0:28>, 15000);

mods.thermalexpansion.Furnace.addRecipe(4000, <TabulaRasa:RasaItem0:29>, <TabulaRasa:RasaItem0:28>);

<TabulaRasa:RasaItem0:29>.addTooltip("Making it with Fames, Gula, or");
<TabulaRasa:RasaItem0:29>.addTooltip("Corpus beans yields more dough.");

<TabulaRasa:RasaItem0:28>.addTooltip("Disgusting. Mana beans");
<TabulaRasa:RasaItem0:28>.addTooltip("taste terrible. Throw into a");
<TabulaRasa:RasaItem0:28>.addTooltip("mana pool to make it edible.");

<Botania:manaCookie>.addTooltip("Completely restores hunger when");
<Botania:manaCookie>.addTooltip("Eaten. Immume to diminishing returns!");