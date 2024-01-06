print("SCRIPT: Infused Seed Recipe Fix");

val shards = <ore:materialAspectShard>;

for item in shards.items {
    shards.remove(item);
}
