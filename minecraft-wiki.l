%{
#include "y.tab.h"
%}
%%
"?"             {return QMARK;}
[sS]"how"       {return SHOW;}
[hH]"ow"     {return HOW;}
[wW]"here"      {return WHERE;}
[wW]"hat"      {return WHAT;}
"to"             {return TO;}
"do"                {return DO;}
"you"             {return YOU;}
"the"             {return THE;}
"find"             {return FIND;}
"get"              {return GET;}
"me"                {return ME;}
"is"                {return IS;}

"diamonds"           {return DIAMOND;}
"iron"              {return IRON;}
"gold"              {return GOLD;}

"end"             {return END;}
"nether"             {return NETHER;}

"achievement"              {return ACHIEVEMENT;}

"recipe for"        {return RECIPEFOR;}
"craft"|"make"|"obtain"      {return CRAFT;}
"breed"             {return BREED;}

"crafting table"             {return CRAFTING_TABLE;}
"pickaxe"             {return PICKAXE;}
"axe"             {return AXE;}
"sword"             {return SWORD;}
"door"             {return DOOR;}
"trapdoor"             {return TRAPDOOR;}
"chest"             {return CHEST;}
"stick"             {return STICK;}
"torch"             {return TORCH;}
"furnace"             {return FURNACE;}
"bow"             {return BOW;}
"arrows"             {return ARROWS;}
"bucket"                {return BUCKET;}
"flint and steel"               {return FLINT_AND_STEEL;}
"shield"                {return SHIELD;}
"carrot on a stick"         {return CARROT_ON_A_STICK;}
"clock"             {return CLOCK;}
"compass"               {return COMPASS;}
"crossbow"              {return CROSSBOW;}
"map"               {return MAP;}
"fire charge"           {return FIRE_CHARGE;}
"fishing rod"           {return FISHING_ROD;}
"wood plank"            {return WOOD_PLANK;}
"ladder"                {return LADDER;}
"fence"                 {return FENCE;}
"boat"              {return BOAT;}
"wood slab"         {return WOOD_SLAB;}
"stone slab"            {return STONE_SLAB;}
"sign"              {return SIGN;}
"wood"              {return WOOD;}
"glowstone"             {return GLOWSTONE;}
"snow block"            {return SNOW_BLOCK;}
"tnt"|"TNT"             {return TNT;}
"clay block"            {return CLAY_BLOCK;}
"brick block"               {return BRICK_BLOCK;}
"bookshelf"             {return BOOKSHELF;}
"note block"            {return NOTE_BLOCK;}
"jack o lantern"|"Jack-O Lantern"|"Jack O lantern"|"Jack O Lantern"|"jack-o lantern"            {return JACK_O_LANTERN;}
"wood stairs"           {return WOOD_STAIRS;}
"shovel"                {return SHOVEL;}
"shulker"|"shulker box"             {return SHULKER;}
"spyglass"              {return SPYGLASS;}
"helmet"                {return HELMET;}
"chestplate"                {return CHESTPLATE;}
"leggings"              {return LEGGINGS;}
"boots"             {return BOOTS;}
"horse armor"           {return HORSE_ARMOR;}
"conduit"               {return CONDUIT;}
"turtle shell"              {return TURTLE_SHELL;}
"pressure plate"                {return PRESSURE_PLATE;}
"gate"              {return GATE;}
"button"                {return BUTTON;}
"lever"             {return LEVER;}
"jukebox"               {return JUKEBOX;}
"dispenser"             {return DISPENSER;}
"piston"                {return PISTON;}
"sticky piston"             {return STICKY_PISTON;}
"minecart"              {return MINECART;}
"powered minecart"              {return POWERED_MINECART;}
"storage minecart"              {return STORAGE_MINECART;}
"rail"              {return RAIL;}

"cats"|"ocelots"             {return CATS;}
"dogs"              {return DOGS;}
"horses"            {return HORSES;}
"parrots"           {return PARROTS;}

"Taking Inventory"              {return TAKING_INVENTORY;}
"Getting Wood"              {return GETTING_WOOD;}
"Benchmarking"              {return BENCHMARKING;}
"Time to Farm!"              {return TIME_TO_FARM;}
"Bake Bread"              {return BAKE_BREAD;}
"The Lie"               {return THE_LIE;}
"Time to Strike!"              {return TIME_TO_STRIKE;}
"Monster Hunter"              {return MONSTER_HUNTER;}
"Sniper Duel"              {return SNIPER_DUEL;}
"Cow Tipper"              {return COW_TIPPER;}
"When Pigs Fly"              {return WHEN_PIGS_FLY;}
"Time to Mine!"              {return TIME_TO_MINE;}
"Getting an Upgrade"              {return GETTING_AN_UPGRADE;}
"Hot Topic"              {return HOT_TOPIC;}
"Delicious Fish"              {return DELICIOUS_FISH;}
"Acquire Hardware"              {return ACQUIRE_HARDWARE;}
"On A Rail"              {return ON_A_RAIL;}
"DIAMONDS!"              {return DIAMONDS;}
"Enchanter"              {return ENCHANTER;}
"Overkill"              {return OVERKILL;}
"Librarian"              {return LIBRARIAN;}
"We Need to Go Deeper"              {return WE_NEED_TO_GO_DEEPER;}
"Return To Sender"              {return RETURN_TO_SENDER;}
"Into Fire"              {return INTO_FIRE;}
"Local Brewery"              {return LOCAL_BREWERY;}
"The End?"              {return THE_END_Q;}
"The End."              {return THE_END_P;}
"The Beginning?"              {return THE_BEGINNING_Q;}
"The Beginning."              {return THE_BEGINNING_P;}
"Adventuring Time"              {return ADVENTURING_TIME;}
"Repopulation"              {return REPOPULATION;}
"Diamonds to You!"              {return DIAMONDS_TO_YOU;}
"Beaconator"              {return BEACONATOR;}
"Overpowered"              {return OVERPOWERED;}

[\n]                {return *yytext;}
[ \t]                ;

%%
int yywrap (void) {return 1;}