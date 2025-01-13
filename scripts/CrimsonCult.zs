print("SCRIPT: Crimson Cult Items");

mods.thaumcraft.Research.clearPages("CRIMSON");

game.setLocalization("en_US", "tc.research_page.CRIMSON.1", 'Much of this book is written in a spidery and unintelligible script, but what you do understand offers some strange insights into the goal of a group called the "Crimson Cult".\nTheir origins and current whereabouts are shrouded in mystery, but it seems their goal was the perfection of a ritual they referred to as "Apertis Oculis" - Opening the Eye. What it does is unclear, but you doubt it is anything good.\nInterestingly enough, you think thaumaturgy might offer the missing pieces they had so long sought. Obviously only a madman would pursue this line of study...');

game.setLocalization("en_US", "tc.research_name.CULTITEMS", "Crimson Cult Paraphernalia");
game.setLocalization("en_US", "tc.research_text.CULTITEMS", "Forbidden Fashion");
game.setLocalization("en_US", "tc.research_page.CULTITEMS.1", "Further study into the crimson rites has allowed you to decipher instructions on how to produce what must have been the armor, robes, and banners used by the Crimson Cult. Since you have been unable to find any living members who have survived the blight that has overtaken this planet, this may be a way to establish your own branch of the cult should you desire to do so.");
game.setLocalization("en_US", "tc.research_page.CULTITEMS.2", "Crimson cult banners may be created by embroidering a red banner using a gold nugget with a touch of ordo vis. Thaumcraft and Et Futurum Requiem red banners will both work for this purpose.");

mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemHelmetCultistPlate>, "ignis 5", [[null, <ore:ingotGold>, null], [<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemHelmetThaumium>, <Thaumcraft:ItemResource:17>], [null, <ore:ingotGold>, null]]);
mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemChestplateCultistPlate>, "aer 5", [[<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemChestplateThaumium>, <Thaumcraft:ItemResource:17>], [<ore:dyeRed>, <Thaumcraft:ItemResource:7>, <ore:dyeRed>]]);
mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemLeggingsCultistPlate>, "aqua 5", [[null, <ore:nuggetGold>, null], [<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemLeggingsThaumium>, <Thaumcraft:ItemResource:17>], [<ore:dyeRed>, <Thaumcraft:ItemResource:7>, <ore:dyeRed>]]);
mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemHelmetCultistRobe>, "ignis 5", [[<Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:7>, <Thaumcraft:ItemResource:7>], [<Thaumcraft:ItemResource:7>, <ore:dyeRed>, <Thaumcraft:ItemResource:7>], [<Thaumcraft:ItemResource:17>, null, <Thaumcraft:ItemResource:17>]]);
mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemChestplateCultistRobe>, "aer 5", [[<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemChestplateRobe>, <Thaumcraft:ItemResource:17>], [<Thaumcraft:ItemResource:7>, <ore:dyeRed>, <Thaumcraft:ItemResource:7>]]);
mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemLeggingsCultistRobe>, "aqua 5", [[null, <ore:nuggetGold>, null], [<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemLeggingsRobe>, <Thaumcraft:ItemResource:17>], [<Thaumcraft:ItemResource:7>, <ore:dyeRed>, <Thaumcraft:ItemResource:7>]]);
mods.thaumcraft.Arcane.addShaped("CULTITEMS", <Thaumcraft:ItemBootsCultist>, "terra 5", [[<ore:dyeRed>, null, <ore:dyeRed>], [<Thaumcraft:ItemResource:17>, <Thaumcraft:ItemBootsRobe>, <Thaumcraft:ItemResource:17>]]);
mods.thaumcraft.Arcane.addShapeless("CULTITEMS", <Thaumcraft:blockWoodenDevice:8>, "ordo 5", [<Thaumcraft:blockWoodenDevice:8>.withTag({color: 14 as byte}), <ore:nuggetGold>]);
mods.thaumcraft.Arcane.addShapeless("CULTITEMS", <Thaumcraft:blockWoodenDevice:8>, "ordo 5", [<etfuturum:banner:14>, <ore:nuggetGold>]);

mods.thaumcraft.Research.addResearch("CULTITEMS", "BASICS", "fabrico 4, metallum 4, pannus 4, alienis 4", 0, 5, 0, <Thaumcraft:ItemHelmetCultistRobe>);
mods.thaumcraft.Research.setSecondary("CULTITEMS", true);
mods.thaumcraft.Research.setConcealed("CULTITEMS", true);
mods.thaumcraft.Research.addPrereq("CULTITEMS", "CRIMSON", false);
mods.thaumcraft.Research.addPrereq("CULTITEMS", "ELDRITCHMINOR", true);


mods.thaumcraft.Research.addPage("CRIMSON", "tc.research_page.CRIMSON.1");
mods.thaumcraft.Research.addPage("CULTITEMS", "tc.research_page.CULTITEMS.1");
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemHelmetCultistPlate>);
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemChestplateCultistPlate>);
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemLeggingsCultistPlate>);
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemHelmetCultistRobe>);
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemChestplateCultistRobe>);
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemLeggingsCultistRobe>);
mods.thaumcraft.Research.addArcanePage("CULTITEMS", <Thaumcraft:ItemBootsCultist>);
mods.thaumcraft.Research.addPage("CULTITEMS", "tc.research_page.CULTITEMS.2");