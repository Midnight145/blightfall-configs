//Minetweaker recipes and changes
import mods.nei.NEI;
import mods.botania.Lexicon;
import minetweaker.item.IItemStack;

print("SCRIPT: Botania");

//Hide and kill old Floral Fertilizer
NEI.hide(<Botania:fertilizer>);
recipes.remove(<Botania:fertilizer>);

//Flowers are really different in Blightfall. :/
Lexicon.removePage("botania.entry.flowers", 0);
Lexicon.addTextPage("botania.page.blightfallFlower0","botania.entry.flowers",0);
game.setLocalization("en_US", "botania.page.blightfallFlower0", "Around the world, you may stumble upon a large variety of Mystical Flora. Finding them may be hard, because the taint has nearly driven them to extinction.<br>They come in a total of &416 &0different colors.<br>Once you find some, it becomes possible to grow more of these flowers using &1Floral Fertilizer&0 (read on).");
Lexicon.removePage("botania.entry.flowers", 6);
Lexicon.addTextPage("botania.page.blightfallFlower6","botania.entry.flowers",6);
game.setLocalization("en_US", "botania.page.blightfallFlower6", "Right clicking the &1Floral Powder&0 in any &1Wool&0 or &1Carpet&0 changes its color to the color of the powder.<br>By mixing the &1Floral Powder&0 with some &1Bone Meal&0, it's possible to create &1Floral Fertilizer&0, which will grow a small amount of &1Mystical Flowers&0 in the nearby vicinity. The color of the flowers that grow depends on the flowers used to craft the fertilizer.");
Lexicon.removePage("botania.entry.flowers", 8);
Lexicon.addTextPage("botania.page.blightfallFlower8","botania.entry.flowers",8);
game.setLocalization("en_US", "botania.page.blightfallFlower8", "Normal flowers simply cannot be made into floral fertilizer, no matter what you may have heard. If you have no mystical flowers, and want more, perhaps the Thaumaturges have a way to help? You should look in the Thaumonomicon for more info.");
Lexicon.removePage("botania.entry.flowers", 9);
Lexicon.addTextPage("botania.page.blightfallFlower9","botania.entry.flowers",9);
game.setLocalization("en_US", "botania.page.blightfallFlower9", "There's also a taller variants of the typical &1Mystical Flowers&0. These can only be gathered with &1Shears&0, but can be used to obtain twice the amount of petals a normal flower would yield. They're a bit too big for dye, though.<br>They can be made by fertilizing a &1Mystical Flower&0 with &1Bone Meal&0.");

//Update Lexicon to show it.
Lexicon.removePage("botania.entry.lexicon", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.blightfallLexicon","botania.entry.lexicon",2,
               [<Botania:lexicon> * 2],

					     [[[<Botania:lexicon>, <minecraft:book>, null]]]);
game.setLocalization("en_US", "botania.page.blightfallLexicon", "Copying the Lexicon.");

//Edit Pure Daisy to mention anti-taint effects and that it can be found in the world.
Lexicon.addTextPage("botania.page.BlightfallPureDaisy5","botania.entry.pureDaisy",5);
game.setLocalization("en_US", "botania.page.BlightfallPureDaisy5", "These flowers also seem to have a &1cleansing&0 effect on the taint. This makes it easy to spot them &1in the wild&0; just look for small patches of purified land.");

//Edit Daybloom to remove creepy poetry and to mention that it appears in the world.
Lexicon.removePage("botania.entry.daybloom", 0);
Lexicon.addTextPage("botania.page.blightfallDaybloom0","botania.entry.daybloom",0);
game.setLocalization("en_US", "botania.page.blightfallDaybloom0", "The &1Daybloom&0 is the most basic and rudimentary &4Generating Flower&0. Simply put, it performs a modified photosynthesis process, in order to transform sunlight into &4Mana&0.<br>The process is rather slow, about ten or a dozen of these should get the job done, for now.<br>You can sometimes find these scattered in the world.");
Lexicon.removePage("botania.entry.daybloom", 5);
Lexicon.removePage("botania.entry.daybloom", 4);

//Kill Orechid Ingam, Wrap, Spellbinding Cloth
mods.botania.Lexicon.removeEntry("botania.entry.orechidIgnem");
mods.botania.Apothecary.removeRecipe("orechidIgnem");
mods.botania.Lexicon.removeEntry("botania.entry.wrap");
mods.botania.Lexicon.removeEntry("botania.entry.spellCloth");
NEI.hide(<Botania:spellCloth>);
recipes.remove(<Botania:spellCloth>);

//Edit Elf Message.
Lexicon.removePage("botania.entry.elfMessage", 1);
Lexicon.addLorePage("botania.page.blightfallElfMessage1","botania.entry.elfMessage",1);
game.setLocalization("en_US", "botania.page.blightfallElfMessage1", "&oGreetings. We noticed that our portal was opened via a link from another world. That's rather shocking news indeed. We thank you very much for providing us with a repository of the knowledge from your world, as to keep us up to date to what happened since we left it. Speaking of which... what in Freya's name has happened over there? It seems to have been woefully mismanaged!");
Lexicon.removePage("botania.entry.elfMessage", 3);
Lexicon.addLorePage("botania.page.blightfallElfMessage3","botania.entry.elfMessage",3);
game.setLocalization("en_US", "botania.page.blightfallElfMessage3", "&oThe link you have managed to establish is rather weak, no living beings will be able to go through. We're perfectly fine with that; we see no need to risk our lands becoming infected with your taint. There's another positive side; the link strikes the fabric of time of both our worlds in a way where it doesn't keep them in sync. That's the reason why you received your book back so quickly.");

//Better forbidden magic hints.
Lexicon.removePage("forbidden.lexicon.tainthistle", 0);
Lexicon.addTextPage("botania.page.blightfallTainthistle","forbidden.lexicon.tainthistle",0);
game.setLocalization("en_US", "botania.page.blightfallTainthistle", "The disgusting &1Tainthistle&0 derives sustenance from the tainted runoff of magical experiments. It'll suck up any such substance it can find and try to turn it into mana. <br>Because it is born of thaumaturgic energies, it can be created only by thaumaturges. Research via a &1Thaumonomicon&0 search should its recipe.");

Lexicon.removePage("forbidden.lexicon.euclidaisy", 0);
Lexicon.addTextPage("botania.page.blightfallEuclidaisy","forbidden.lexicon.euclidaisy",0);
game.setLocalization("en_US", "botania.page.blightfallEuclidaisy", "The eerie, pink &1Euclidaisy&0 is an oddity. It uses large amounts of mana to conjure some sort of ethereal substance. <br>Thaumaturges seem to covet this ethereal substance. Likely, it is they who invented it. Research via a &1Thaumonomicon&0 should reveal its recipe.");

Lexicon.removePage("forbidden.lexicon.whisperweed", 0);
Lexicon.addTextPage("botania.page.blightfallWhisperweed","forbidden.lexicon.whisperweed",0);
game.setLocalization("en_US", "botania.page.blightfallWhisperweed", "The &1Whisperweed&0 is an unpleasant plant that whispers thaumaturgic secrets into the ears of anyone who'll listen.<br>Because the secrets are thaumaturgic in nature, it's obvious this plant is their doing. Research via a &1Thaumonomicon&0 should reveal its recipe.");


//Make Lexicon gated.
recipes.remove(<Botania:lexicon>);
recipes.addShapeless(<Botania:lexicon>, [<TabulaRasa:RasaItem0:19>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<Botania:lexicon>*2, [<Botania:lexicon>, <minecraft:book>]);

mods.thaumcraft.Research.addResearch("THAUMOMORPHICESSENCE", "FORBIDDEN", "praecantatio 15, herba 15, permutatio 15, sensus 5", -5, 4, 4, <TabulaRasa:RasaItem0:20>);
game.setLocalization("en_US", "tc.research_name.THAUMOMORPHICESSENCE", "Thaumomorphic Botanist Essence");
game.setLocalization("en_US", "tc.research_text.THAUMOMORPHICESSENCE", "Making flowers more Mystical.");
game.setLocalization("en_US", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE", "Those mystical flowers must have come from somewhere. Obviously, a wizard did it. And if a wizard could do it, a different wizard should be able to do it again.\nThaumomorphic botanist essence, in addition to being hard to pronounce, allows a thaumoturge to create mystical flowers from dandelions and poppies. See NEI for crafting details.");
mods.thaumcraft.Infusion.addRecipe("THAUMOMORPHICESSENCE", <minecraft:dye:15>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Botania:manaResource:1>], "permutatio 40, herba 16, praecantatio 16, sensus 40, lux 8", <TabulaRasa:RasaItem0:20>, 6);
mods.thaumcraft.Research.addPage("THAUMOMORPHICESSENCE", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE");
mods.thaumcraft.Research.addInfusionPage("THAUMOMORPHICESSENCE", <TabulaRasa:RasaItem0:20>);

val nonmagicFlower = <ore:nonmagicFlower>;
nonmagicFlower.add(<minecraft:yellow_flower>);
nonmagicFlower.add(<minecraft:red_flower>);

mods.thaumcraft.Research.addPrereq("THAUMOMORPHICESSENCE", "INFUSION", false);
mods.thaumcraft.Research.addPrereq("THAUMOMORPHICESSENCE", "BOTANY", false);

var dyes = [<minecraft:dye:15>, <minecraft:dye:14>, <minecraft:dye:13>, <minecraft:dye:12>, <minecraft:dye:11>, <minecraft:dye:10>, <minecraft:dye:9>, <minecraft:dye:8>, <minecraft:dye:7>, <minecraft:dye:6>, <minecraft:dye:5>, <minecraft:dye:4>, <minecraft:dye:3>, <minecraft:dye:2>, <minecraft:dye:1>, <minecraft:dye:0>] as IItemStack[];
var mFlowers = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>, ] as IItemStack[];

for i, dye in dyes
{
    var mFlower = mFlowers[i];

    recipes.addShapeless(mFlower, [<ore:nonmagicFlower>, dye, <TabulaRasa:RasaItem0:20>]);
}

mods.botania.Apothecary.addRecipe(<Thaumcraft:blockCustomPlant:2>.withTag({display: {Name: "Botanist Shimmerleaf"}}), [<ore:petalWhite>, <ore:manaPetalWhite>, <ore:petalLightBlue>, <ore:manaPetalLightBlue>, <ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<Thaumcraft:blockCustomPlant:4>.withTag({display: {Name: "Botanist Ethereal Bloom"}}), [<ore:manaPetalWhite>, <ore:manaPetalWhite>, <ore:manaPetalLightBlue>, <ore:manaPetalLightBlue>, <ore:manaPetalGreen>, <ore:petalLime>, <ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <ore:runeEarthB>, <ore:runeSpringB>]);

mods.botania.Lexicon.addEntry("botania.entry.etherealBloom","botania.category.functionalFlowers",<Thaumcraft:blockCustomPlant:4>);
game.setLocalization("en_US", "botania.entry.etherealBloom", "Ethereal Blooms");

mods.botania.Lexicon.addEntry("botania.entry.shimmerleaf","botania.category.functionalFlowers",<Thaumcraft:blockCustomPlant:2>);
game.setLocalization("en_US", "botania.entry.shimmerleaf", "Shimmerleaf");

mods.botania.Lexicon.addTextPage("botania.page.etherealBloom0","botania.entry.etherealBloom",0);
game.setLocalization("en_US", "botania.page.etherealBloom0", "The thaumaturges might believe that they own the concept of ethereal blooms, but they're wrong. The bloom is a flower, and all things flowery belong to the botanist. Obviously, there is a way to make them in a petal apothecary.");

mods.botania.Lexicon.addTextPage("botania.page.shimmerleaf0","botania.entry.shimmerleaf",0);
game.setLocalization("en_US", "botania.page.shimmerleaf0", "The thaumaturges might believe that they own the concept of ethereal blooms, but they're wrong. The bloom is a flower, and all things flowery belong to the botanist. Obviously, there is a way to make them in a petal apothecary.");

mods.botania.Lexicon.addPetalPage("botania.page.etherealBloom1","botania.entry.etherealBloom",1,[<Thaumcraft:blockCustomPlant:4>.withTag({display: {Name: "Botanist Ethereal Bloom"}})],[[<ore:manaPetalWhite>, <ore:manaPetalWhite>, <ore:manaPetalLightBlue>, <ore:manaPetalLightBlue>, <ore:manaPetalGreen>, <ore:petalLime>, <ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <ore:runeEarthB>, <ore:runeSpringB>]]);
game.setLocalization("en_US", "botania.page.etherealBloom1", "&oRequires a surprising amount of iron.&r");

mods.botania.Lexicon.addPetalPage("botania.page.shimmerleaf1","botania.entry.shimmerleaf",1,[<Thaumcraft:blockCustomPlant:2>.withTag({display: {Name: "Botanist Shimmerleaf"}})],[[<ore:petalWhite>, <ore:manaPetalWhite>, <ore:petalLightBlue>, <ore:manaPetalLightBlue>, <ore:petalGreen>]]);
game.setLocalization("en_US", "botania.page.shimmerleaf1", "&oWay easier than with blood magic. What'd you expect?&r");

mods.thermalexpansion.Smelter.addRecipe(400, <minecraft:end_stone>, <minecraft:glass_bottle>, <Botania:manaResource:15>, <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}), 15);

//Correct spelling of Soujourner's Sash (in English)
game.setLocalization("en_US", "item.botania:travelBelt.name", "Sojourner's Sash");

mods.botania.ManaInfusion.removeRecipe(<minecraft:nether_wart>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:nether_wart>, <minecraft:blaze_powder>, 4000);
mods.botania.ManaInfusion.addAlchemy(<minecraft:ghast_tear>, <minecraft:blaze_rod>, 20000);