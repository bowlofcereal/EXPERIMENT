/datum/advclass/hedgeknight //heavy knight class - just like black knight adventurer class. starts with heavy armor training and plate, but less weapon skills than brigand, sellsword and knave
	name = "Hedge Knight"
	tutorial = "Fallen from grace, your tarnished armor sits upon your shoulders as a heavy reminder of the life you've lost. Take back what is rightfully yours."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/bandit/hedgeknight
	category_tags = list(CTAG_BANDIT)
	maximum_possible_slots = 1
	cmode_music = 'sound/music/combat_bandit.ogg'

/datum/outfit/job/roguetown/bandit/hedgeknight/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/knight/black
	gloves = /obj/item/clothing/gloves/roguetown/chain/blk
	pants = /obj/item/clothing/under/roguetown/chainlegs/blk
	cloak = /obj/item/clothing/cloak/tabard/blkknight
	neck = /obj/item/clothing/neck/roguetown/gorget
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail
	armor = /obj/item/clothing/suit/roguetown/armor/plate/blkknight
	wrists = /obj/item/clothing/wrists/roguetown/bracers
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/blkknight
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/sword/long/death
	backr = /obj/item/storage/backpack/rogue/satchel/black
	backl = /obj/item/rogueweapon/shield/tower/metal
	id = /obj/item/mattcoin
	backpack_contents = list(
					/obj/item/rogueweapon/huntingknife/idagger = 1,
					/obj/item/flashlight/flare/torch = 1,
					)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.change_stat("strength", 2)
	H.change_stat("endurance", 2)
	H.change_stat("constitution", 3)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_HEAVYARMOR, TRAIT_GENERIC)
