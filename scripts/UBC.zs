print("SCRIPT: UBC");

//Some of the ores had badly localized names.
game.setLocalization("en_US", "ore.yellorite.name", "Yellorite Ore"); 
game.setLocalization("en_US", "tile.tconstruct.stoneore.name", "Aluminum Ore"); 

/***************** Iron Ore *************************/

val ironOreFix = <ore:oreIron>;

ironOreFix.add(<UndergroundBiomes:igneous_oreIron:*>);
ironOreFix.add(<UndergroundBiomes:metamorphic_oreIron:*>);
ironOreFix.add(<UndergroundBiomes:sedimentary_oreIron:*>);

/**************** Redstone Ore **********************/

val redsOreFix = <ore:oreRedstone>;

redsOreFix.add(<UndergroundBiomes:igneous_oreRedstone:*>);
redsOreFix.add(<UndergroundBiomes:metamorphic_oreRedstone:*>);
redsOreFix.add(<UndergroundBiomes:sedimentary_oreRedstone:*>);

/***************** Lapis Ore *************************/

val lapisOreFix = <ore:oreLapis>;

lapisOreFix.add(<UndergroundBiomes:igneous_oreLapis:*>);
lapisOreFix.add(<UndergroundBiomes:metamorphic_oreLapis:*>);
lapisOreFix.add(<UndergroundBiomes:sedimentary_oreLapis:*>);

/*****************  Gold Ore *************************/

val goldOreFix = <ore:oreGold>;

goldOreFix.add(<UndergroundBiomes:igneous_oreGold:*>);
goldOreFix.add(<UndergroundBiomes:metamorphic_oreGold:*>);
goldOreFix.add(<UndergroundBiomes:sedimentary_oreGold:*>);

/*****************  Coal Ore *************************/

val coalOreFix = <ore:oreCoal>;

coalOreFix.add(<UndergroundBiomes:igneous_oreCoal:*>);
coalOreFix.add(<UndergroundBiomes:metamorphic_oreCoal:*>);
coalOreFix.add(<UndergroundBiomes:sedimentary_oreCoal:*>);

/**************  Diamond Ore *************************/

val diamondOreFix = <ore:oreDiamond>;

diamondOreFix.add(<UndergroundBiomes:igneous_oreDiamond:*>);
diamondOreFix.add(<UndergroundBiomes:metamorphic_oreDiamond:*>);
diamondOreFix.add(<UndergroundBiomes:sedimentary_oreDiamond:*>);

/**************  Emerald Ore *************************/

val emeraldOreFix = <ore:oreEmerald>;

emeraldOreFix.add(<UndergroundBiomes:igneous_oreEmerald:*>);
emeraldOreFix.add(<UndergroundBiomes:metamorphic_oreEmerald:*>);
emeraldOreFix.add(<UndergroundBiomes:sedimentary_oreEmerald:*>);
