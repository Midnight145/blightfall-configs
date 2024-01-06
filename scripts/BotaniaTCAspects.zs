print("SCRIPT: Botania TC Aspects");

//Taken from Phoenix Team and then edited because I'm evil and like to nerf things.

mods.thaumcraft.Aspects.set(<Botania:flower:*>, "herba 1, victus 1, sensus 1, praecantatio 1"); //You can get infinite mana from floral fertilizer, but it's grindy.
mods.thaumcraft.Aspects.set(<Botania:petal:*>, "herba 1, sensus 1"); //Removed magic.
mods.thaumcraft.Aspects.set(<Botania:manaPetal:*>, "herba 1, praecantatio 1, sensus 1"); //Magic left intact.
mods.thaumcraft.Aspects.set(<Botania:dye:*>, "herba 1");
mods.thaumcraft.Aspects.set(<Botania:fertilizer>, "herba 3, sensus 1");
//mods.thaumcraft.Aspects.set(<Botania:twigWand>, "arbor 6, herba 2, praecantatio 6, sensus 5"); //Let this be autocalced.
mods.thaumcraft.Aspects.set(<Botania:manaResource>, "metallum 4, praecantatio 2, sensus 2"); //Nerf Iron->Magic engines.
mods.thaumcraft.Aspects.set(<Botania:manaResource:1>, "alienis 4, iter 4, praecantatio 6, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:manaResource:2>, "lucrum 4, vitreus 4, praecantatio 4, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:manaResource:3>, "arbor 2, sensus 1, praecantatio 1"); //Nerf wood->magic engines.
mods.thaumcraft.Aspects.set(<Botania:manaResource:4>, "metallum 4, praecantatio 18, sensus 6, terra 10, lucrum 4, vitreus 4, iter 4, alienis 4");
mods.thaumcraft.Aspects.set(<Botania:manaResource:5>, "metallum 4, terra 20, praecantatio 34, spiritus 15"); //Added metallum because I'm a punk.
mods.thaumcraft.Aspects.set(<Botania:manaResource:7>, "metallum 4, praecantatio 4, sensus 2, iter 2, auram 1"); //2->1 ratio, not bad.
mods.thaumcraft.Aspects.set(<Botania:manaResource:8>, "alienis 4, iter 6, praecantatio 6, sensus 2, auram 1");
mods.thaumcraft.Aspects.set(<Botania:manaResource:9>, "lucrum 4, vitreus 4, praecantatio 4, sensus 2, iter 2, auram 1, superbia 2"); //Added superbia.
//mods.thaumcraft.Aspects.set(<Botania:storage>, "metallum 6, praecantatio 6, sensus 4"); //These storage blocks might as well be autocalced.
//mods.thaumcraft.Aspects.set(<Botania:storage:1>, "metallum 6, praecantatio 22, sensus 8, terra 12, lucrum 6, vitreus 6, iter 6, alienis 6");
//mods.thaumcraft.Aspects.set(<Botania:storage:2>, "metallum 6, praecantatio 6, sensus 4, iter 4, auram 3");
mods.thaumcraft.Aspects.set(<Botania:rune>, "terra 2, praecantatio 7, sensus 2, aqua 3");
mods.thaumcraft.Aspects.set(<Botania:rune:1>, "terra 2, praecantatio 7, sensus 2, ignis 3");
mods.thaumcraft.Aspects.set(<Botania:rune:2>, "terra 5, praecantatio 7, sensus 2,"); //Consolodated Terra.
mods.thaumcraft.Aspects.set(<Botania:rune:3>, "terra 2, praecantatio 7, sensus 2, aer 3");
mods.thaumcraft.Aspects.set(<Botania:rune:4>, "terra 2, praecantatio 7, sensus 2, auram 1, herba 4"); //Buffed season runes by one.
mods.thaumcraft.Aspects.set(<Botania:rune:5>, "terra 2, praecantatio 7, sensus 2, auram 1, ignis 4");
mods.thaumcraft.Aspects.set(<Botania:rune:6>, "terra 2, praecantatio 7, sensus 2, auram 1, arbor 4");
mods.thaumcraft.Aspects.set(<Botania:rune:7>, "terra 2, praecantatio 7, sensus 2, auram 1, gelum 4");
mods.thaumcraft.Aspects.set(<Botania:rune:8>, "terra 2, praecantatio 9, sensus 4");
mods.thaumcraft.Aspects.set(<Botania:rune:9>, "terra 2, praecantatio 7, sensus 2, humanus 2, victus 1");
mods.thaumcraft.Aspects.set(<Botania:rune:10>, "terra 2, praecantatio 7, sensus 2, fames 5, gula 5");
mods.thaumcraft.Aspects.set(<Botania:rune:11>, "terra 2, praecantatio 7, sensus 2, lucrum 5");
mods.thaumcraft.Aspects.set(<Botania:rune:12>, "terra 2, praecantatio 7, sensus 2, motus 1, desidia 5");
mods.thaumcraft.Aspects.set(<Botania:rune:13>, "terra 2, praecantatio 7, sensus 2, humanus 2, telum 1, ira 5");
mods.thaumcraft.Aspects.set(<Botania:rune:14>, "terra 2, praecantatio 7, sensus 2, humanus 2, cognitio 1, fames 1, desidia, invidia 5");
mods.thaumcraft.Aspects.set(<Botania:rune:15>, "terra 2, praecantatio 7, sensus 2, humanus 1, cognitio 1, lucrum 1, metallum 1, superbia 5");
mods.thaumcraft.Aspects.set(<Botania:rainbowRod>, "metallum 8, praecantatio 10, sensus 8, iter 9, auram 5, alienis 8, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:livingrock:*>, "terra 2, praecantatio 5, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:livingwood:*>, "arbor 3, praecantatio 5, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:alfheimPortal>, "arbor 5, praecantatio 10, sensus 6, metallum 4, terra 10, lucrum 4, vitreus 4, iter 4, alienis 4");
mods.thaumcraft.Aspects.set(<Botania:altar>, "perditio 2, terra 2, herba 1, praecantatio 1, sensus 1");
mods.thaumcraft.Aspects.set(<Botania:runeAltar>, "praecantatio 10, fabrico 4, cognitio 4, ordo 10, aer 5, vitreus 4, alienis 4, iter 4 terra 4"); //Nerfed Magic.
mods.thaumcraft.Aspects.set(<Botania:pylon>, "metallum 10, praecantatio 8, sensus 6, lucrum 8, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:pylon:1>, "metallum 10, praecantatio 10, sensus 9, terra 5, lucrum 10, vitreus 6, iter 2, alienis 2");
mods.thaumcraft.Aspects.set(<Botania:pylon:2>, "metallum 10, praecantatio 10, sensus 8, iter 7, auram 4, lucrum 8, vitreus 4, alienis 8");
mods.thaumcraft.Aspects.set(<Botania:shinyFlower:*>, "herba 1, victus 1, sensus 1, praecantatio 1, lux 2");
mods.thaumcraft.Aspects.set(<Botania:miniIsland:*>, "herba 1, victus 1, sensus 1, praecantatio 1, terra 1");
mods.thaumcraft.Aspects.set(<Botania:manaBeacon>, "praecantatio 10, alienis 8, perditio 10, lux 10, vitreus 5, auram 5");
mods.thaumcraft.Aspects.set(<Botania:unstableBlock>, "praecantatio 5, alienis 3, perditio 2, lux 3, vitreus 2, auram 2"); //Halved everything. Don't think the author of this file knew it made 2.
mods.thaumcraft.Aspects.set(<Botania:enderDagger>, "arbor 2, sensus 4, praecantatio 8, metallum 4, alienis 3, iter 2, tellum");
mods.thaumcraft.Aspects.set(<Botania:terraSword>, "victus 5, ignis 5, lux 5, herba 5, sensus 5, praecantatio 5, telum 3, metallum 5, arbor 2, iter 4");
mods.thaumcraft.Aspects.set(<Botania:terraPick>, "victus 5, ignis 5, lux 5, herba 5, sensus 5, praecantatio 5, perfodio 4, metallum 7, arbor 2, iter 4");
mods.thaumcraft.Aspects.set(<Botania:lens>, "metallum 4, praecantatio 4, sensus 2, vitreus 2");
mods.thaumcraft.Aspects.set(<Botania:lens:1>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, aer 3");
mods.thaumcraft.Aspects.set(<Botania:lens:2>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, ignis 3");
mods.thaumcraft.Aspects.set(<Botania:lens:3>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, terra 3");
mods.thaumcraft.Aspects.set(<Botania:lens:4>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, aqua 3");
mods.thaumcraft.Aspects.set(<Botania:lens:5>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, auram 1, ignis 3");
mods.thaumcraft.Aspects.set(<Botania:lens:6>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, auram 1, gelum 3");
mods.thaumcraft.Aspects.set(<Botania:lens:7>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, lucrum 5");
mods.thaumcraft.Aspects.set(<Botania:lens:8>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, humanus 2, telum 1");
mods.thaumcraft.Aspects.set(<Botania:lens:9>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, spiritus 5");
mods.thaumcraft.Aspects.set(<Botania:lens:10>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, iter 2, motus 2");
mods.thaumcraft.Aspects.set(<Botania:lens:11>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, cognitio 1, fames 1");
mods.thaumcraft.Aspects.set(<Botania:lens:12>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, iter 8");
mods.thaumcraft.Aspects.set(<Botania:lens:13>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, corpus 8");
mods.thaumcraft.Aspects.set(<Botania:lens:14>, "metallum 4, praecantatio 6, sensus 2, vitreus 4, auram 2, lux 5");
mods.thaumcraft.Aspects.set(<Botania:lens:15>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, ignis 8");
mods.thaumcraft.Aspects.set(<Botania:lens:16>, "metallum 4, praecantatio 4, sensus 2, vitreus 2, motus 8");
mods.thaumcraft.Aspects.set(<Botania:manasteelPick>, "metallum 6, praecantatio 5, sensus 3, perfodio 2");
mods.thaumcraft.Aspects.set(<Botania:elementiumPick>, "metallum 6, praecantatio 5, sensus 3, iter 3, auram 2, perfodio 2");
mods.thaumcraft.Aspects.set(<Botania:glassPick>, "metallum 2, praecantatio 3, sensus 2, perfodio 2, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:manasteelShovel>, "metallum 4, praecantatio 4, sensus 2, arbor 2, instrumentum 3");
mods.thaumcraft.Aspects.set(<Botania:elementiumShovel>, "metallum 4, praecantatio 4, sensus 2, iter 2, auram 1, arbor 2, instrumentum 3");
mods.thaumcraft.Aspects.set(<Botania:manasteelAxe>, "metallum 6, praecantatio 5, sensus 3, instrumentum 3");
mods.thaumcraft.Aspects.set(<Botania:elementiumAxe>, "metallum 6, praecantatio 5, sensus 3, iter 3, auram 2, instrumentum 3");
mods.thaumcraft.Aspects.set(<Botania:manasteelShears>, "metallum 5, praecantatio 5, sensus 3, meto 3");
mods.thaumcraft.Aspects.set(<Botania:elementiumShears>, "metallum 5, praecantatio 5, sensus 3, iter 3, auram 2, meto 3");
mods.thaumcraft.Aspects.set(<Botania:manasteelSword>, "metallum 5, praecantatio 5, sensus 3, arbor 1, telum 3");
mods.thaumcraft.Aspects.set(<Botania:elementiumSword>, "metallum 5, praecantatio 5, sensus 3, iter 3, auram 2, arbor 1, telum 3");
mods.thaumcraft.Aspects.set(<Botania:manasteelHelm>, "metallum 6, praecantatio 5, sensus 3, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:elementiumHelm>, "metallum 6, praecantatio 5, sensus 3, iter 3, auram 2, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:terrasteelHelm>, "metallum 6, praecantatio 10, sensus 6, terra 10, lucrum 6, vitreus 6, iter 6, alienis 6, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:manasteelChest>, "metallum 6, praecantatio 5, sensus 3, tutamen 6");
mods.thaumcraft.Aspects.set(<Botania:elementiumChest>, "metallum 6, praecantatio 5, sensus 3, iter 3, auram 2, tutamen 6");
mods.thaumcraft.Aspects.set(<Botania:terrasteelChest>, "metallum 6, praecantatio 10, sensus 6, terra 10, lucrum 6, vitreus 6, iter 6, alienis 6, tutamen 6");
mods.thaumcraft.Aspects.set(<Botania:manasteelLegs>, "metallum 6, praecantatio 5, sensus 3, tutamen 5");
mods.thaumcraft.Aspects.set(<Botania:elementiumLegs>, "metallum 6, praecantatio 5, sensus 3, iter 3, auram 2, tutamen 5");
mods.thaumcraft.Aspects.set(<Botania:terrasteelLegs>, "metallum 6, praecantatio 10, sensus 6, terra 10, lucrum 6, vitreus 6, iter 6, alienis 6, tutamen 5");
mods.thaumcraft.Aspects.set(<Botania:manasteelBoots>, "metallum 5, praecantatio 5, sensus 3, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:elementiumBoots>, "metallum 5, praecantatio 5, sensus 3, iter 3, auram 2, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:terrasteelBoots>, "metallum 5, praecantatio 10, sensus 6, terra 10, lucrum 6, vitreus 6, iter 6, alienis 6, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:manasteelHelmReveal>, "metallum 6, praecantatio 5, sensus 10, tutamen 2, vitreus 2");
mods.thaumcraft.Aspects.set(<Botania:elementiumHelmReveal>, "metallum 6, praecantatio 5, sensus 10, iter 3, auram 2, tutamen 2, vitreus 2");
mods.thaumcraft.Aspects.set(<Botania:terrasteelHelmReveal>, "metallum 6, praecantatio 10, sensus 10, terra 10, lucrum 6, vitreus 8, iter 6, alienis 6, tutamen 2");
mods.thaumcraft.Aspects.set(<Botania:tinyPlanet>, "terra 7, praecantatio 7, sensus 4, iter 4, motus 3");
mods.thaumcraft.Aspects.set(<Botania:tinyPlanetBlock>, "terra 10, praecantatio 7, sensus 4, iter 4, motus 3");
mods.thaumcraft.Aspects.set(<Botania:spreader>, "arbor 5, praecantatio 5, sensus 4, herba 1, lucrum 2"); //Nerfed magic
mods.thaumcraft.Aspects.set(<Botania:spreader:1>, "arbor 5, praecantatio 5, sensus 4, herba 1, lucrum 2, potentia 2"); //Nerfed magic
mods.thaumcraft.Aspects.set(<Botania:dreamwood:*>, "arbor 4, praecantatio 7, sensus 3, cognitio 3, auram 2");
mods.thaumcraft.Aspects.set(<Botania:spreader:2>, "arbor 5, praecantatio 8, sensus 6, cognitio 3, auram 3, herba 1,");
mods.thaumcraft.Aspects.set(<Botania:reedBlock>, "herba 4, aqua 4, aer 4");
mods.thaumcraft.Aspects.set(<Botania:reedBlock0Stairs>, "herba 3, aqua 3, aer 3");
mods.thaumcraft.Aspects.set(<Botania:reedBlock0Slab>, "herba 2, aqua 2, aer 2");
mods.thaumcraft.Aspects.set(<Botania:thatch>, "fames 4, messis 8");
mods.thaumcraft.Aspects.set(<Botania:thatch0Stairs>, "fames 3 messis 6");
mods.thaumcraft.Aspects.set(<Botania:thatch0Slab>, "fames 2, messis 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick>, "terra 4, ignis 3");
mods.thaumcraft.Aspects.set(<Botania:customBrick:1>, "terra 4, spiritus 3, vinculum 3");
mods.thaumcraft.Aspects.set(<Botania:customBrick:2>, "terra 4, gelum 3");
mods.thaumcraft.Aspects.set(<Botania:customBrick:3>, "terra 4, ignis 3, fabrico 3");
mods.thaumcraft.Aspects.set(<Botania:customBrick0Stairs>, "terra 3, ignis 2");
mods.thaumcraft.Aspects.set(<Botania:customBrick1Stairs>, "terra 3, spiritus 2, vinculum 2");
mods.thaumcraft.Aspects.set(<Botania:customBrick2Stairs>, "terra 3, gelum 2");
mods.thaumcraft.Aspects.set(<Botania:customBrick3Stairs>, "terra 3, ignis 2, fabrico 2");
mods.thaumcraft.Aspects.set(<Botania:customBrick0Slab>, "terra 2, ignis 1");
mods.thaumcraft.Aspects.set(<Botania:customBrick1Slab>, "terra 2, spiritus 1, vinculum 1");
mods.thaumcraft.Aspects.set(<Botania:customBrick2Slab>, "terra 2, gelum 1");
mods.thaumcraft.Aspects.set(<Botania:customBrick3Slab>, "terra 2, ignis 1, fabrico 1");
mods.thaumcraft.Aspects.set(<Botania:customBrick:4>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:5>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:6>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:7>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:8>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:9>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:10>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:11>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:12>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:13>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:14>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:customBrick:15>, "sensus 1, potentia 4, vitreus 4");
mods.thaumcraft.Aspects.set(<Botania:livingrock0Stairs>, "terra 1, praecantatio 3, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:livingrock1Stairs>, "terra 1, praecantatio 3, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:livingwood0Stairs>, "arbor 2, praecantatio 3, sensus 1");
mods.thaumcraft.Aspects.set(<Botania:livingwood1Stairs>, "arbor 2, praecantatio 3, sensus 1");
mods.thaumcraft.Aspects.set(<Botania:livingrock0Slab>, "terra 1, praecantatio 2, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:livingrock1Slab>, "terra 1, praecantatio 2, sensus 2");
mods.thaumcraft.Aspects.set(<Botania:livingwood0Slab>, "arbor 1, praecantatio 3, sensus 1");
mods.thaumcraft.Aspects.set(<Botania:livingwood1Slab>, "arbor 1, praecantatio 3, sensus 1");
mods.thaumcraft.Aspects.set(<Botania:dreamwood0Stairs>, "arbor 3, praecantatio 5, sensus 2, cognitio 3, auram 2");
mods.thaumcraft.Aspects.set(<Botania:dreamwood1Stairs>, "arbor 3, praecantatio 5, sensus 2, cognitio 3, auram 2");
mods.thaumcraft.Aspects.set(<Botania:dreamwood0Slab>, "arbor 2, praecantatio 3, sensus 1, cognitio 3, auram 2");
mods.thaumcraft.Aspects.set(<Botania:dreamwood1Slab>, "arbor 2, praecantatio 3, sensus 1, cognitio 3, auram 2");
mods.thaumcraft.Aspects.set(<Botania:quartz>, "potentia 1, vitreus 1, praecantatio 1, ignis 1");
mods.thaumcraft.Aspects.set(<Botania:quartz:2>, "potentia 2, vitreus 1, praecantatio 1, ignis 1");
mods.thaumcraft.Aspects.set(<Botania:quartz:1>, "potentia 1, vitreus 1, praecantatio 1, sensus 1");
mods.thaumcraft.Aspects.set(<Botania:quartz:3>, "potentia 1, vitreus 1, praecantatio 1, herba 1");
mods.thaumcraft.Aspects.set(<Botania:quartz:4>, "potentia 3, vitreus 1, praecantatio 1");
mods.thaumcraft.Aspects.set(<Botania:quartz:5>, "potentia 3, vitreus 1, praecantatio 1, auram 1");
mods.thaumcraft.Aspects.set(<Botania:manaResource:10>, "aqua 1, terra 2, virteus 2");
mods.thaumcraft.Aspects.set(<Botania:prismarine>, "aqua 4, terra 8, virteus 8");
mods.thaumcraft.Aspects.set(<Botania:prismarine:2>, "aqua 4, terra 8, virteus 8");
mods.thaumcraft.Aspects.set(<Botania:prismarine:3>, "aqua 4, terra 8, virteus 8, perditio 2");
mods.thaumcraft.Aspects.set(<Botania:seaLamp>, "aqua 4, terra 8, virteus 8, perditio 2, lux 3");
mods.thaumcraft.Aspects.set(<Botania:prismarine0Stairs>, "aqua 3, terra 6, virteus 6");
mods.thaumcraft.Aspects.set(<Botania:prismarine1Stairs>, "aqua 3, terra 6, virteus 6");
mods.thaumcraft.Aspects.set(<Botania:prismarine2Stairs>, "aqua 3, terra 6, virteus 6, perditio 2");
mods.thaumcraft.Aspects.set(<Botania:prismarine0Slab>, "aqua 3, terra 6, virteus 6");
mods.thaumcraft.Aspects.set(<Botania:prismarine1Slab>, "aqua 3, terra 6, virteus 6");
mods.thaumcraft.Aspects.set(<Botania:prismarine2Slab>, "aqua 3, terra 6, virteus 6, perditio 2");
