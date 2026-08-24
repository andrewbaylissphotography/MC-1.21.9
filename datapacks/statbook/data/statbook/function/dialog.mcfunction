$dialog show @s {type:"minecraft:notice",title:"Your Stats",body:{type:"minecraft:plain_message",contents:[ \
{text:"Max Health: ",color:"green"}, \
{text:"$(maxHealth)",color:"white"}, \
{text:"\n"}, \
{text:"Armor: ",color:"yellow"}, \
{text:"$(armor)",color:"white"}, \
{text:"\n"}, \
{text:"Armor Toughness: ",color:"yellow"}, \
{text:"$(armorToughness)",color:"white"}, \
{text:"\n"}, \
{text:"Attack Damage: ",color:"red"}, \
{text:"$(attackDamage)",color:"white"}, \
{text:"\n"}, \
{text:"Attack Knockback: ",color:"red"}, \
{text:"$(attackKnockback)",color:"white"}, \
{text:"\n"}, \
{text:"Attack Speed: ",color:"red"}, \
{text:"$(attackSpeed)",color:"white"}, \
{text:"\n"}, \
{text:"Knockback Resist: ",color:"aqua"}, \
{text:"$(knockbackResist)%",color:"white"}, \
{text:"\n"}, \
{text:"Luck: ",color:"aqua"}, \
{text:"$(luck)",color:"white"} \
]}}
