<customnpcs:npcStoneReversedDagger>.addTooltip("Because holding it back-");
<customnpcs:npcStoneReversedDagger>.addTooltip("wards makes it cooler.");

<customnpcs:npcSlingshot>.addTooltip(format.blue("+2 attack damage"));
<customnpcs:npcSlingshot>.addTooltip("Fires vanilla cobblestone,");
<customnpcs:npcSlingshot>.addTooltip("but not alien variants,");

<customnpcs:npcFullWoodenShield>.addTooltip("Hold right click to reduce");
<customnpcs:npcFullWoodenShield>.addTooltip("attack damage greatly!");

<customnpcs:npcStoneShield>.addTooltip("Hold right click to reduce");
<customnpcs:npcStoneShield>.addTooltip("attack damage greatly!");

<customnpcs:npcOcarina>.addTooltip("Right click to play... cheap harp");
<customnpcs:npcOcarina>.addTooltip("music? I dunno. Blame Noppes.");

//It's not a harp! It's a lyre, you liar!
<customnpcs:npcHarp>.displayName = "Lyre";
<customnpcs:npcHarp>.addTooltip("Right click to play. You");
<customnpcs:npcHarp>.addTooltip("aren't very skilled.");

//Add stuff for crowbar and French Horn.

recipes.addShaped(<customnpcs:npcCrowbar>, [[null, <minecraft:carpet:14>, <ore:ingotSteel>], [<minecraft:carpet:14>, <ore:ingotSteel>, <minecraft:carpet:14>], [<ore:ingotSteel>, <minecraft:carpet:14>, null]]);
<customnpcs:npcCrowbar>.addTooltip("A quest item. Less effective as");
<customnpcs:npcCrowbar>.addTooltip("a weapon than Gordon Freeman");
<customnpcs:npcCrowbar>.addTooltip("would have you believe.");

recipes.addShaped(<customnpcs:npcFrenchHorn>, [[null, null, <ore:ingotBrass>], [<ore:ingotBrass>, <ore:nuggetIron>, <ore:ingotBrass>], [null, <ore:ingotBrass>, <ore:ingotBrass>]]);
<customnpcs:npcFrenchHorn>.addTooltip("A quest item. Very Distracting.");
<customnpcs:npcFrenchHorn>.addTooltip("Right click to play... cheap harp");
<customnpcs:npcFrenchHorn>.addTooltip("music? I dunno. Blame Noppes.");

<customnpcs:npcPendant>.addTooltip("Looks cool.");
<customnpcs:npcPendant>.addTooltip("Does nothing.");

<customnpcs:npcLocket>.addTooltip("Looks cool.");
<customnpcs:npcLocket>.addTooltip("Does nothing.");

<customnpcs:npcStatuette>.addTooltip("Looks cool.");
<customnpcs:npcStatuette>.addTooltip("Does nothing.");