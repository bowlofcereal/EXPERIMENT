/datum/advclass/knighterrant
	name = "Knight Errant"
	tutorial = "You are a Knight-Errant, a wandering noble from a distant land. Your armor bears the crest of a great house, and your blade carries the weight of your chivalry. Whether driven by glory, a sense of adventure or a quest for purpose, your journey has brought you to Lyndhardtia."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_SHUNNED_UP
	outfit = /datum/outfit/job/roguetown/adventurer/knight
	maximum_possible_slots = 1
	pickprob = 30
	traits_applied = list(TRAIT_OUTLANDER)
	category_tags = list(CTAG_ADVENTURER)
/* Adventurer classes can't have an after_spawn apparently.
/datum/advclass/knighterrant/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		if(istype(H.cloak, /obj/item/clothing/cloak/tabard/knight))
			var/obj/item/clothing/S = H.cloak
			var/index = findtext(H.real_name, " ")
			if(index)
				index = copytext(H.real_name, 1,index)
			if(!index)
				index = H.real_name
			S.name = "knight tabard ([index])"
		var/prev_real_name = H.real_name
		var/prev_name = H.name
		var/honorary = "Ser"
		if(H.gender == FEMALE)
			honorary = "Dame"
		H.real_name = "[honorary] [prev_real_name]"
		H.name = "[honorary] [prev_name]"
*/
/datum/outfit/job/roguetown/adventurer/knight/pre_equip(mob/living/carbon/human/H)
	..()
	to_chat(H, span_warning("You are a knight from a distant land, a scion of a noble house visiting Lyndhardtia for one reason or another."))
	head = /obj/item/clothing/head/roguetown/helmet/heavy/knight
	gloves = /obj/item/clothing/gloves/roguetown/chain
	pants = /obj/item/clothing/under/roguetown/chainlegs
	cloak = /obj/item/clothing/cloak/tabard/knight
	neck = /obj/item/clothing/neck/roguetown/bevor
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	armor = /obj/item/clothing/suit/roguetown/armor/brigandine/coatplates
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	belt = /obj/item/storage/belt/rogue/leather/steel
	backl = /obj/item/storage/backpack/rogue/satchel
	beltl = /obj/item/flashlight/flare/torch/lantern
	backpack_contents = list(/obj/item/storage/belt/rogue/pouch/coins/poor = 1)
	H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.dna.species.soundpack_m = new /datum/voicepack/male/knight()
	var/turf/TU = get_turf(H)
	if(TU)
		new /mob/living/simple_animal/hostile/retaliate/rogue/saiga/tame/saddled(TU)
		ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_NOBLE, TRAIT_GENERIC)
		var/weapons = list("Bastard Sword","Mace + Shield","Flail + Shield","Billhook")
		var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
		switch(weapon_choice)
			if("Bastard Sword")
				H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
				beltr = /obj/item/rogueweapon/sword/long
			if("Mace + Shield")
				H.mind.adjust_skillrank(/datum/skill/combat/maces, 1, TRUE)
				H.mind.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
				beltr = /obj/item/rogueweapon/mace
				backr = /obj/item/rogueweapon/shield/tower/metal
			if("Flail + Shield")
				H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 1, TRUE)
				H.mind.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
				beltr = /obj/item/rogueweapon/flail
				backr = /obj/item/rogueweapon/shield/tower/metal
			if("Billhook")
				H.mind.adjust_skillrank(/datum/skill/combat/polearms, 1, TRUE)
				r_hand = /obj/item/rogueweapon/spear/billhook
				backr = /obj/item/gwstrap
		H.change_stat("strength", 1)
		H.change_stat("constitution", 1)
		H.change_stat("endurance", 1)
