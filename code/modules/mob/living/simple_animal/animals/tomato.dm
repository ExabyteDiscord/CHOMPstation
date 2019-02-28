/mob/living/simple_animal/hostile/tomato
	name = "tomato"
	desc = "It's a horrifyingly enormous beef tomato, and it's packing extra beef!"
	tt_desc = "X Solanum abominable"
	icon_state = "tomato"
	icon_living = "tomato"
	icon_dead = "tomato_dead"
	intelligence_level = SA_PLANT

	faction = "plants"
	maxHealth = 15
	health = 15
	turns_per_move = 5

	response_help  = "prods"
	response_disarm = "pushes aside"
	response_harm   = "smacks"

	harm_intent_damage = 5
	melee_damage_upper = 15
	melee_damage_lower = 10
	attacktext = list("mauled")

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/tomatomeat

//CHOMPEDIT PIRANHA PLANT.
//Yes I'm basing this shit on the tomato, sue me. -shark
//No longer based on tomato because evolved too far -shark
/mob/living/simple_animal/hostile/piranhaplant
	name = "Piranha Plant"
	desc = "It's a plant, that eats people!"
	tt_desc = "Packun Flower"
	
	faction = "plants"
	intelligence_level = SA_PLANT
	
	maxHealth = 100
	health = 100
	meat_type = null

	//Mob icon/appearance settings
	//icon = overridefile to be made
	//icon_living = "piranha" 	//to be made
	//icon_dead = "piranha_dead" 	//to be made
	icon_gib = "generic_gib"	// The iconstate for being gibbed, optional. Defaults to a generic gib animation.
	icon_rest = null		// The iconstate for resting, optional
	attack_icon = 'icons/effects/effects.dmi' //Just the default, played like the weapon attack anim
	attack_icon_state = "slash" 	//Just the default //gonna have to make teeth chomping version

	//Vore stuff
	vore_active = 1
	vore_capacity = 1
	vore_pounce_chance = 80
	vore_standing_too = 1
	vore_ignores_undigestable = 0 
	vore_default_mode = DM_DIGEST
	vore_digest_chance = 99	
	vore_absorb_chance = 0
	vore_escape_chance = 5
	vore_icons = 0 //no vore icons
	swallowTime = 10 SECONDS //CHOMPED

	//Movement Stuff
	wander = 0		// Does the mob wander around when idle?
	wander_distance = 0	// How far the mob will wander before going home (assuming they are allowed to do that)
	returns_home = 1	// Mob knows how to return to wherever it started
	turns_per_move = 1	// How many life() cycles to wait between each wander mov?
	stop_when_pulled = 0 	// When set to 1 this stops the animal from moving when someone is pulling it.
	follow_dist = 2		// Distance the mob tries to follow a friend
	speed = 4		// Higher speed is slower, negative speed is faster.

	//Talk/Emote stuff
	speak_chance = 0		// Probability that I talk (this is 'X in 200' chance since even 1/100 is pretty noisy)
	reacts = 1			// Reacts to some things being said
	speak = list()			// Things I might say if I talk
	emote_hear = list("chomps","snaps at the air")	// Hearable emotes I might perform
	emote_see = list()		// Unlike speak_emote, the list of things in this variable only show by themselves with no spoken text. IE: Ian barks, Ian yaps
	say_understood = list()		// List of things to say when accepting an order
	say_cannot = list()		// List of things to say when they cannot comply
	say_maybe_target = list()	// List of things to say when they spot something barely
	say_got_target = list()		// List of things to say when they engage a target
	reactions = list("chomp" = "!chomps",)	// List of "string" = "reaction" and things they hear will be searched for string.

	//Hostility war bloodshed, RAWR
	hostile = 1		// Do I even attack?
	view_range = 2		// Scan for targets in this range.
	investigates = 1	// Do I investigate if I saw someone briefly?
	cooperative = 1		// Do I ask allies to help me?
	assist_distance = 2	// Radius in which I'll ask my comrades for help.
	grab_resist = 100	// Chance of me resisting a grab attempt.
	taser_kill = 1		// Is the mob weak to tasers

	//Melee behaviour
	melee_damage_lower = 1		// Lower bound of randomized melee damage
	melee_damage_upper = 5		// Upper bound of randomized melee damage
	attacktext = list("chomped","bit","hompfed","crunched","cronched") // "You are [attacktext] by the mob!"
	friendly = list("nuzzles")	// "The mob [friendly] the person."
	//attack_sound = null		// Sound to play when I attack
	environment_smash = 0		// How much environment damage do I do when I hit stuff?
	melee_miss_chance = 1		// percent chance to miss a melee attack.
	melee_attack_minDelay = 5	// How long between attacks at least
	melee_attack_maxDelay = 20	// How long between attacks at most
	attack_armor_type = "melee"	// What armor does this check?
	attack_armor_pen = 100		// How much armor pen this attack has.
	attack_sharp = 1		// Is the attack sharp?
	attack_edge = 0			// Does the attack have an edge?

	//Stuff for people wanting to be a fucking plant. Weirdos
	show_stat_health = 1	// Does the percentage health show in the stat panel for the mob
	ai_inactive = 0 	// Set to 1 to turn off most AI actions
	has_hands = 1		// Set to 1 to enable the use of hands and the hands hud
	humanoid_hands = 0	// Can a player in this mob use things like guns or AI cards?
	//hand_form = "hands"	// Used in IsHumanoidToolUser. 'Your X are not fit-'.
	//hud_gears		// Slots to show on the hud (typically none)
	//ui_icons		// Icon file path to use for the HUD, otherwise generic icons are used
	//r_hand_sprite = "piranha_r" // If they have hands, //TODO make a leaf sprite for this
	//l_hand_sprite = "piranha_l" // they could use some icons.
	player_msg = "PLANT GO CHOMP" // Message to print to players about 'how' to play this mob on login.

//Ranged variation
/mob/living/simple_animal/hostile/piranhaplant/spitter
		//might snatch the code for that uranium ray for this since it should poison
	name = "Piranha Spitter"
	
	/* //Attack ranged settings, This will be used for the second time, the piranha spitters
	ranged = 1		// Do I attack at range?
	shoot_range = 5		// How far away do I start shooting from?
	rapid = 0		// Three-round-burst fire mode
	firing_lines = 0	// Avoids shooting allies
	projectiletype		// The projectiles I shoot
	projectilesound		// The sound I make when I do it
	casingtype		// What to make the hugely laggy casings pile out of*/


//When I stop being lazy I'll give this its own file -Shark
