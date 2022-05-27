%{
int yylex();    
void yyerror (char *s);
#include <stdio.h>     /* C declarations used in actions */
#include <stdlib.h> /* C exit function */

%}

%union {}  
%token SHOW HOW WHERE TO DO YOU THE FIND GET ME IS DIAMOND IRON GOLD END NETHER ACHIEVEMENT RECIPEFOR CRAFT BREED CRAFTING_TABLE PICKAXE AXE SWORD DOOR TRAPDOOR CHEST STICK TORCH FURNACE BOW ARROWS BUCKET FLINT_AND_STEEL SHIELD CATS DOGS HORSES PARROTS TAKING_INVENTORY GETTING_WOOD BENCHMARKING TIME_TO_FARM BAKE_BREAD THE_LIE TIME_TO_STRIKE MONSTER_HUNTER SNIPER_DUEL COW_TIPPER WHEN_PIGS_FLY TIME_TO_MINE GETTING_AN_UPGRADE HOT_TOPIC DELICIOUS_FISH ACQUIRE_HARDWARE ON_A_RAIL DIAMONDS ENCHANTER OVERKILL LIBRARIAN WE_NEED_TO_GO_DEEPER RETURN_TO_SENDER INTO_FIRE LOCAL_BREWERY THE_END_Q THE_END_P THE_BEGINNING_Q THE_BEGINNING_P ADVENTURING_TIME REPOPULATION DIAMONDS_TO_YOU BEACONATOR OVERPOWERED
%token WHAT QMARK
%token CARROT_ON_A_STICK CLOCK COMPASS CROSSBOW MAP FIRE_CHARGE FISHING_ROD WOOD_PLANK LADDER FENCE BOAT WOOD_SLAB STONE_SLAB SIGN WOOD GLOWSTONE SNOW_BLOCK TNT CLAY_BLOCK BRICK_BLOCK
%token BOOKSHELF NOTE_BLOCK JACK_O_LANTERN WOOD_STAIRS SHOVEL SHULKER SPYGLASS HELMET CHESTPLATE LEGGINGS BOOTS HORSE_ARMOR CONDUIT TURTLE_SHELL PRESSURE_PLATE GATE BUTTON LEVER JUKEBOX DISPENSER
%token PISTON STICKY_PISTON MINECART POWERED_MINECART STORAGE_MINECART RAIL

%%
program : program statement '\n'
	     {}
        | /* epsilon */
	;
statement : crafting_statement
          | achievement_statement
          | place_statement
          | mob_statement
          ;

crafting_statement : HOW TO CRAFT item 
                   | SHOW RECIPEFOR item 
                   | SHOW ME RECIPEFOR item
				   | SHOW ME THE RECIPEFOR item
                   | HOW DO YOU CRAFT item
                   | SHOW ME HOW DO YOU CRAFT item
                   | WHAT IS THE RECIPEFOR item
                   ;
achievement_statement : HOW DO YOU GET THE ACHIEVEMENT achievement
                      | achievement
                      ;
place_statement : HOW DO YOU GET TO THE place
                | WHERE IS place
                | WHERE place
                | HOW TO GET TO THE place
				| WHERE IS THE place
                ;
mob_statement : HOW DO YOU BREED animals
              | HOW TO BREED animals
              ;
item    :  CRAFTING_TABLE {printf("wood plank | wood plank\n _____________\nwood plank | wood plank\n");}
        | PICKAXE {printf("________________________________________________________________\n");
	         printf("|_______diamond______|_______diamond______|_______diamond______|\n");
	         printf("|____________________|________stick_______|____________________|\n"); 
	         printf("|____________________|________stick_______|____________________|\n\n"); }

        | AXE {printf("________________________________________________________________\n");
	         printf("|_______diamond______|_______diamond______|____________________|\n");
	         printf("|_______diamond______|________stick_______|____________________|\n"); 
	         printf("|____________________|________stick_______|____________________|\n\n"); }

        | SWORD {printf("________________________________________________________________\n");
	         printf("|____________________|________iron________|____________________|\n");
	         printf("|____________________|________iron________|____________________|\n"); 
	         printf("|____________________|________stick_______|____________________|\n\n"); }

        | DOOR {printf("________________________________________________________________\n");
	        printf("|____________________|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|____________________|_____wood_plank_____|_____wood_plank_____|\n"); 
	        printf("|____________________|_____wood_plank_____|_____wood_plank_____|\n"); }

        | TRAPDOOR {printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); 
	        printf("|____________________|____________________|____________________|\n"); }

        | CHEST {printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|_____wood_plank_____|____________________|_____wood_plank_____|\n"); 
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); }

        | STICK {printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|_____wood_plank_____|____________________|\n"); 
	        printf("|____________________|_____wood_plank_____|____________________|\n"); }

        | FURNACE {printf("________________________________________________________________\n");
	        printf("|_____cobblestone____|_____cobblestone____|_____cobblestone____|\n");
	        printf("|_____cobblestone____|____________________|_____cobblestone____|\n"); 
	        printf("|_____cobblestone____|_____cobblestone____|_____cobblestone____|\n"); }

        | BOW {printf("________________________________________________________________\n");
	        printf("|____________________|________stick_______|_______string_______|\n");
	        printf("|________stick_______|____________________|_______string_______|\n"); 
	        printf("|____________________|________stick_______|_______string_______|\n"); }

        | ARROWS {printf("________________________________________________________________\n");
	        printf("|____________________|________flint_______|____________________|\n");
	        printf("|____________________|________stick_______|____________________|\n"); 
	        printf("|____________________|_______feather______|____________________|\n"); }

        | BUCKET {printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________iron________|____________________|________iron________|\n"); 
	        printf("|____________________|________iron________|____________________|\n"); }

        | FLINT_AND_STEEL {printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|________flint_______|____________________|\n"); 
	        printf("|____________________|____________________|________iron________|\n"); }

        | SHIELD {printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|________iron________|_____wood_plank_____|\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); 
	        printf("|____________________|_____wood_plank_____|____________________|\n"); }

        | CARROT_ON_A_STICK {printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____fishing_rod_____|____________________|____________________|\n"); 
	        printf("|____________________|_______carrot_______|____________________|\n"); }

        | CLOCK {printf("________________________________________________________________\n");
	        printf("|____________________|_____gold_ingot_____|____________________|\n");
	        printf("|_____gold_ingot_____|______redstone______|_____gold_ingot_____|\n"); 
	        printf("|____________________|_____gold_ingot_____|____________________|\n"); }
            
            | COMPASS{printf("________________________________________________________________\n");
	        printf("|____________________|_____iron_ingot_____|____________________|\n");
	        printf("|_____iron_ingot_____|______redstone______|_____iron_ingot_____|\n"); 
	        printf("|____________________|_____iron_ingot_____|____________________|\n"); }
            
            | FISHING_ROD{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|________stick_______|\n");
	        printf("|____________________|________stick_______|____________________|\n"); 
	        printf("|________stick_______|____________________|____________________|\n"); }
            
            | WOOD_PLANK{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|_________log________|____________________|\n"); 
	        printf("|____________________|____________________|____________________|\n"); }
            
            | LADDER{printf("________________________________________________________________\n");
	        printf("|________stick_______|____________________|________stick_______|\n");
	        printf("|________stick_______|________stick_______|________stick_______|\n"); 
	        printf("|________stick_______|____________________|________stick_______|\n"); }
            
            | FENCE{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|_____wood_plank_____|________stick_______|_____wood_plank_____|\n"); 
	        printf("|_____wood_plank_____|________stick_______|_____wood_plank_____|\n"); }
            
            | BOAT{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|_____wood_plank_____|____________________|_____wood_plank_____|\n"); 
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); }
            
            | WOOD_SLAB{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|____________________|____________________|\n"); 
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); }
            
            | STONE_SLAB{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|____________________|____________________|\n"); 
	        printf("|_____cobblestone____|_____cobblestone____|_____cobblestone____|\n"); }
            
            | SIGN{printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); 
	        printf("|____________________|________stick_______|____________________|\n"); }
            
            | WOOD{printf("________________________________________________________________\n");
	        printf("|_________log________|_________log________|____________________|\n");
	        printf("|_________log________|_________log________|____________________|\n"); 
	        printf("|____________________|____________________|____________________|\n"); }
            
            | GLOWSTONE{printf("________________________________________________________________\n");
	        printf("|___glowstone_dust___|___glowstone_dust___|____________________|\n");
	        printf("|___glowstone_dust___|___glowstone_dust___|____________________|\n"); 
	        printf("|____________________|____________________|____________________|\n"); }
            
            | SNOW_BLOCK{printf("________________________________________________________________\n");
	        printf("|_____snowball_______|_____snowball_______|____________________|\n");
	        printf("|_____snowball_______|_____snowball_______|____________________|\n"); 
	        printf("|____________________|____________________|____________________|\n"); }
            
            | TNT{printf("________________________________________________________________\n");
	        printf("|______gunpowder_____|________sand________|______gunpowder_____|\n");
	        printf("|________sand________|______gunpowder_____|________sand________|\n"); 
	        printf("|______gunpowder_____|________sand________|______gunpowder_____|\n"); }
            
            | CLAY_BLOCK{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________clay________|________clay________|____________________|\n"); 
	        printf("|________clay________|________clay________|____________________|\n"); }
            
            | BRICK_BLOCK{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|_____clay_brick_____|_____clay_brick_____|____________________|\n"); 
	        printf("|_____clay_brick_____|_____clay_brick_____|____________________|\n"); }
            
            | BOOKSHELF{printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|________book________|________book________|________book________|\n"); 
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); }
            
            | NOTE_BLOCK{printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|_____wood_plank_____|______redstone______|_____wood_plank_____|\n"); 
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); }
            
            | JACK_O_LANTERN{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|_______pumpkin______|____________________|\n"); 
	        printf("|____________________|_______torch________|____________________|\n"); }
            
            | WOOD_STAIRS{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|_____wood_plank_____|\n");
	        printf("|____________________|_____wood_plank_____|_____wood_plank_____|\n"); 
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n"); }
            
            | SHOVEL{printf("________________________________________________________________\n");
	        printf("|____________________|________iron________|____________________|\n");
	        printf("|____________________|________stick_______|____________________|\n"); 
	        printf("|____________________|________stick_______|____________________|\n"); }
            
            | SHULKER{printf("________________________________________________________________\n");
	        printf("|____________________|___shulker_shell____|____________________|\n");
	        printf("|____________________|_______chest________|____________________|\n"); 
	        printf("|____________________|___shulker_shell____|____________________|\n"); }
            
            | SPYGLASS{printf("________________________________________________________________\n");
	        printf("|____________________|___amethyst_shard___|____________________|\n");
	        printf("|____________________|______copper________|____________________|\n"); 
	        printf("|____________________|______copper________|____________________|\n"); }
            
            | HELMET{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________iron________|________iron________|________iron________|\n"); 
	        printf("|________iron________|____________________|________iron________|\n"); }
            
            | CHESTPLATE{printf("________________________________________________________________\n");
	        printf("|________iron________|____________________|________iron________|\n");
	        printf("|________iron________|________iron________|________iron________|\n"); 
	        printf("|________iron________|________iron________|________iron________|\n"); }
            
            | LEGGINGS{printf("________________________________________________________________\n");
	        printf("|________iron________|________iron________|________iron________|\n");
	        printf("|________iron________|____________________|________iron________|\n"); 
	        printf("|________iron________|____________________|________iron________|\n"); }
            
            | BOOTS{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________iron________|____________________|________iron________|\n"); 
	        printf("|________iron________|____________________|________iron________|\n"); }
            
            | HORSE_ARMOR{printf("________________________________________________________________\n");
	        printf("|_______leather______|____________________|_______leather______|\n");
	        printf("|_______leather______|_______leather______|_______leather______|\n"); 
	        printf("|_______leather______|____________________|_______leather______|\n"); }
            
            | CONDUIT{printf("________________________________________________________________\n");
	        printf("|______nautilus______|______nautilus______|______nautilus______|\n");
	        printf("|______nautilus______|__Heart_of_The_Sea__|______nautilus______|\n"); 
	        printf("|______nautilus______|______nautilus______|______nautilus______|\n"); }
            
            | TURTLE_SHELL{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________scute_______|________scute_______|________scute_______|\n"); 
	        printf("|________scute_______|____________________|________scute_______|\n"); }
            
            | PRESSURE_PLATE{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|____________________|____________________|\n"); 
	        printf("|____________________|_____wood_plank_____|_____wood_plank_____|\n"); }
            
            | GATE{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________stick_______|_____wood_plank_____|________stick_______|\n"); 
	        printf("|________stick_______|_____wood_plank_____|________stick_______|\n"); }
            
            | BUTTON{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|_______stone________|____________________|\n"); 
	        printf("|____________________|____________________|____________________|\n"); }
            
            | LEVER{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|________stick_______|____________________|\n"); 
	        printf("|____________________|_____cobblestone____|____________________|\n"); }
            
            | JUKEBOX{printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|_____wood_plank_____|______diamond_______|_____wood_plank_____|\n"); 
	        printf("|_____wood_plank_____|________iron________|_____wood_plank_____|\n"); }
            
            | DISPENSER{printf("________________________________________________________________\n");
	        printf("|_____cobblestone____|_____cobblestone____|_____cobblestone____|\n");
	        printf("|_____cobblestone____|_________bow________|____________________|\n"); 
	        printf("|_____cobblestone____|______redstone______|_____cobblestone____|\n"); }
            
            | PISTON{printf("________________________________________________________________\n");
	        printf("|_____wood_plank_____|_____wood_plank_____|_____wood_plank_____|\n");
	        printf("|_____cobblestone____|________iron________|_____cobblestone____|\n"); 
	        printf("|_____cobblestone____|______redstone______|_____cobblestone____|\n"); }
            
            | STICKY_PISTON{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|______slime_ball____|____________________|\n"); 
	        printf("|____________________|_______piston_______|____________________|\n"); }
            
            | MINECART{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|________iron________|____________________|________iron________|\n"); 
	        printf("|________iron________|________iron________|________iron________|\n"); }
            
            | POWERED_MINECART{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|______furnace_______|____________________|\n"); 
	        printf("|____________________|_____minecart_______|____________________|\n"); }
            
            | STORAGE_MINECART{printf("________________________________________________________________\n");
	        printf("|____________________|____________________|____________________|\n");
	        printf("|____________________|________chest_______|____________________|\n"); 
	        printf("|____________________|_____minecart_______|____________________|\n"); }

        | RAIL {printf("________________________________________________________________\n");
	        printf("|________iron________|____________________|________iron________|\n");
	        printf("|________iron________|________stick_______|________iron________|\n"); 
	        printf("|________iron________|____________________|________iron________|\n"); }
        ;
place   : END {printf("||To get to the End you need to use Ender Eyes to find and activate the Stronghold portal.||\n");}
        | NETHER {printf("||To get to the Nether you need to build an obsidian portal with a frame of at least 3x2 and light it with flint and steel.||\n");}
        ;
animals : CATS {printf("||You can breed cats by feeding them fish.||\n");}
        | DOGS {printf("||You can breed dogs by feeding them meat.||\n");}
        | HORSES {printf("||You can breed horses by feeding them wheat.||\n");}
        | PARROTS {printf("||You can breed parrots by feeding them seeds.||\n");}
        ;
achievement : TAKING_INVENTORY {printf("||Press Inventory Key to open your inventory.||\n");}
            | GETTING_WOOD {printf("||Punch a tree until a block of wood pops out.||\n");}
            | BENCHMARKING {printf("||Craft a workbench with four blocks of Wooden Planks.||\n");}
            | TIME_TO_FARM {printf("||Use planks and sticks to make a Wooden Hoe.||\n");}
            | BAKE_BREAD {printf("||Turn wheat into bread.||\n");}
            | THE_LIE {printf("||Wheat, sugar, milk, and eggs!\n");}
            | TIME_TO_STRIKE {printf("||Use planks and sticks to make a sword.||\n");}
            | MONSTER_HUNTER {printf("||Attack and destroy a monster.||\n");}
            | SNIPER_DUEL {printf("||Kill a skeleton with an arrow from more than 50 meters.||\n");}
            | COW_TIPPER {printf("||Harvest some leather.||\n");}
            | WHEN_PIGS_FLY {printf("||Fly a pig off a cliff.||\n");}
            | TIME_TO_MINE {printf("||Use planks and sticks to make a pickaxe.||\n");}
            | GETTING_AN_UPGRADE {printf("||Construct a better pickaxe.||\n");}
            | HOT_TOPIC {printf("||Construct a furnace out of eight cobblestone blocks.||\n");}
            | DELICIOUS_FISH {printf("||Catch and cook fish.||\n");}
            | ACQUIRE_HARDWARE {printf("||Smelt an iron ingot.||\n");}
            | ON_A_RAIL {printf("||Travel by minecart at least 1 km from where you started.||\n");}
            | DIAMONDS {printf("||Acquire diamonds with your iron tools.||\n");}
            | ENCHANTER {printf("||Use a book, obsidian, and diamonds to construct an enchantment table.||\n");}
            | OVERKILL {printf("||Deal eight hearts of damage in a single hit.||\n");}
            | LIBRARIAN {printf("||Build some bookshelves to improve your enchantment table.||\n");}
            | WE_NEED_TO_GO_DEEPER {printf("||Build a portal to the Nether.||\n");}
            | RETURN_TO_SENDER {printf("||Destroy a Ghast with a fireball.||\n");}
            | INTO_FIRE {printf("||Relieve a Blaze of its rod.||\n");}
            | LOCAL_BREWERY {printf("||Brew a potion.||\n");}
            | THE_END_Q {printf("||Locate the End.||\n");}
            | THE_END_P {printf("||Defeat the Ender Dragon.||\n");}
            | THE_BEGINNING_Q {printf("||Spawn the Wither.||\n");}
            | THE_BEGINNING_P {printf("||Defeat the Wither.||\n");}
            | ADVENTURING_TIME {printf("||Discover all biomes.||\n");}
            | REPOPULATION {printf("||Breed two cows with wheat.||\n");}
            | DIAMONDS_TO_YOU {printf("||Throw diamonds at another player.||\n");}
            | BEACONATOR {printf("||Create a full beacon.||\n");}
            | OVERPOWERED {printf("||Eat a Notch Apple.||\n");}
            ;




%%
void yyerror (char *s) {fprintf (stderr, "%s\n", s);} 