/datum/migrant_wave/weocilyn
	name = "The Court of Weocilyn"
	max_spawns = 1
	shared_wave_type = /datum/migrant_wave/weocilyn
	weight = 50
	downgrade_wave = /datum/migrant_wave/weocilyn_down_one
	roles = list(
		/datum/migrant_role/weocilyn/lord = 1,
		/datum/migrant_role/weocilyn/lady = 1,
		/datum/migrant_role/weocilyn/scion = 1,
		/datum/migrant_role/weocilyn/hand = 1,
		/datum/migrant_role/weocilyn/knight = 1,
		/datum/migrant_role/weocilyn/housekeeper = 1,
	)
	greet_text = "Fleeing disaster, you have come together as a court, seeking safe haven in Lyndvhar, promising to take revenge for the fall of Weocilyn. Stay close and watch out for each other, you are all that remains!"

/datum/migrant_wave/weocilyn_down_one
	name = "The Court of Weocilyn"
	shared_wave_type = /datum/migrant_wave/weocilyn
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/weocilyn_down_two
	roles = list(
		/datum/migrant_role/weocilyn/lord = 1,
		/datum/migrant_role/weocilyn/lady = 1,
		/datum/migrant_role/weocilyn/scion = 1,
		/datum/migrant_role/weocilyn/hand = 1,
		/datum/migrant_role/weocilyn/knight = 1,
	)
	greet_text = "Fleeing disaster, you have come together as a court, seeking safe haven in Lyndvhar, promising to take revenge for the fall of Weocilyn. Stay close and watch out for each other, you are all that remains... because some of you never made it on the way here..."

/datum/migrant_wave/weocilyn_down_two
	name = "The Court of Weocilyn"
	shared_wave_type = /datum/migrant_wave/weocilyn
	can_roll = FALSE
	downgrade_wave = /datum/migrant_wave/weocilyn_down_three
	roles = list(
		/datum/migrant_role/weocilyn/lord = 1,
		/datum/migrant_role/weocilyn/lady = 1,
		/datum/migrant_role/weocilyn/scion = 1,
		/datum/migrant_role/weocilyn/hand = 1,
	)
	greet_text = "Fleeing disaster, you have come together as a court, seeking safe haven in Lyndvhar, promising to take revenge for the fall of Weocilyn. Stay close and watch out for each other, you are all that remains... because some of you never made it on the way here..."


/datum/migrant_wave/weocilyn_down_three
	name = "The Court of Weocilyn"
	shared_wave_type = /datum/migrant_wave/weocilyn
	can_roll = FALSE
	roles = list(
		/datum/migrant_role/weocilyn/lord = 1,
		/datum/migrant_role/weocilyn/knight = 1,
		/datum/migrant_role/weocilyn/scion = 1,
	)
	greet_text = "Fleeing disaster, you have come together as a court, seeking safe haven in Lyndvhar, promising to take revenge for the fall of Weocilyn. Stay close and watch out for each other, you are all that remains... because some of you never made it on the way here..."
