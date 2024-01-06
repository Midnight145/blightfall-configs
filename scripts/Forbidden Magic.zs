print("SCRIPT: Forbidden Magic");

game.setLocalization("en_US", "forbidden.research_page.NETHERSHARDS.3", "Because the nether is not accessible from this planet, you'll need to find a way to make these shards without access to the nether. Alien grimoires probably have the answers you seek...");

//Add in botania rune recipes.
recipes.addShaped(<ForbiddenMagic:GluttonyShard> * 4, 
             [[null, <Thaumcraft:ItemShard:*> , null], 
              [<Thaumcraft:ItemShard:*>, <Botania:rune:10>, <Thaumcraft:ItemShard:*>], 
              [null, <Thaumcraft:ItemShard:*>, null]]);

//Add in botania rune recipes.
recipes.addShaped(<ForbiddenMagic:NetherShard:5> * 4, 
             [[null, <Thaumcraft:ItemShard:*> , null], 
              [<Thaumcraft:ItemShard:*>, <Botania:rune:12>, <Thaumcraft:ItemShard:*>], 
              [null, <Thaumcraft:ItemShard:*>, null]]);
			  
//Add in botania rune recipes.
recipes.addShaped(<ForbiddenMagic:NetherShard> * 4, 
             [[null, <Thaumcraft:ItemShard:*> , null], 
              [<Thaumcraft:ItemShard:*>, <Botania:rune:13>, <Thaumcraft:ItemShard:*>], 
              [null, <Thaumcraft:ItemShard:*>, null]]);

//Add in botania rune recipes.
recipes.addShaped(<ForbiddenMagic:NetherShard:1> * 4, 
             [[null, <Thaumcraft:ItemShard:*> , null], 
              [<Thaumcraft:ItemShard:*>, <Botania:rune:14>, <Thaumcraft:ItemShard:*>], 
              [null, <Thaumcraft:ItemShard:*>, null]]);

//Add in botania rune recipes.
recipes.addShaped(<ForbiddenMagic:NetherShard:3> * 4, 
             [[null, <Thaumcraft:ItemShard:*> , null], 
              [<Thaumcraft:ItemShard:*>, <Botania:rune:15>, <Thaumcraft:ItemShard:*>], 
              [null, <Thaumcraft:ItemShard:*>, null]]);

//Add in botania rune recipes.
recipes.addShaped(<ForbiddenMagic:NetherShard:6> * 4, 
             [[null, <Thaumcraft:ItemShard:*> , null], 
              [<Thaumcraft:ItemShard:*>, <Botania:rune:11>, <Thaumcraft:ItemShard:*>], 
              [null, <Thaumcraft:ItemShard:*>, null]]);

//Update Thaumonomicon

mods.botania.Lexicon.addTextPage("botania.page.runeAltar23","botania.entry.runeAltar",23);
game.setLocalization("en_US", "botania.page.runeAltar23", "Also important to note is that the runes based on the seven deadly sins can be drained of their power by nearby vis shards, corrupting them in ways specific to that sin."); 
mods.botania.Lexicon.addCraftingPage("botania.page.runeAltar24","botania.entry.runeAltar",24,
               [<ForbiddenMagic:GluttonyShard> * 4, <ForbiddenMagic:NetherShard:5> * 4,<ForbiddenMagic:NetherShard> * 4,<ForbiddenMagic:NetherShard:1> * 4,<ForbiddenMagic:NetherShard:3> * 4,<ForbiddenMagic:NetherShard:6> * 4], 
					    [[[null, <Thaumcraft:ItemShard:2>, null], 
                                              [<Thaumcraft:ItemShard:0>, <Botania:rune:10>, <Thaumcraft:ItemShard:1>], 
					      [null, <Thaumcraft:ItemShard:4>, null]],

					     [[null, <Thaumcraft:ItemShard:1>, null], 
                                              [<Thaumcraft:ItemShard:4>, <Botania:rune:12>, <Thaumcraft:ItemShard:3>], 
					      [null, <Thaumcraft:ItemShard:5>, null]],

					     [[null, <Thaumcraft:ItemShard:0>, null], 
                                              [<Thaumcraft:ItemShard:5>, <Botania:rune:13>, <Thaumcraft:ItemShard:4>], 
					      [null, <Thaumcraft:ItemShard:3>, null]],

					     [[null, <Thaumcraft:ItemShard:2>, null], 
                                              [<Thaumcraft:ItemShard:3>, <Botania:rune:14>, <Thaumcraft:ItemShard:0>], 
					      [null, <Thaumcraft:ItemShard:1>, null]],

					     [[null, <Thaumcraft:ItemShard:5>, null], 
                                              [<Thaumcraft:ItemShard:2>, <Botania:rune:15>, <Thaumcraft:ItemShard:3>], 
					      [null, <Thaumcraft:ItemShard:4>, null]],

					     [[null, <Thaumcraft:ItemShard:4>, null], 
                                              [<Thaumcraft:ItemShard:1>, <Botania:rune:11>, <Thaumcraft:ItemShard:2>], 
					      [null, <Thaumcraft:ItemShard:3>, null]]]);
game.setLocalization("en_US", "botania.page.runeAltar24", "Any shard color works as input for any rune."); 

//Ender on shard makes end shard

//OutputStack, InputFluid, CastStack, ConsumeCast, TickDelay
mods.tconstruct.Casting.addTableRecipe(<ThaumicTinkerer:kamiResource:7>, <liquid:enderium.molten>*144, <Thaumcraft:ItemShard:6>, true, 20);

//Vulcanite on shard makes nether shard
mods.tconstruct.Casting.addTableRecipe(<ThaumicTinkerer:kamiResource:6>, <liquid:vulcanite.molten>*144, <Thaumcraft:ItemShard:6>, true, 20);
