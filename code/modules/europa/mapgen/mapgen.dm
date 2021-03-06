/datum/random_map/noise/seafloor
	descriptor = "Europan seafloor (roundstart)"
	smoothing_iterations = 3
	target_turf_type = /turf/unsimulated/ocean

/datum/random_map/noise/seafloor/get_appropriate_path(var/value)
	return

/datum/random_map/noise/seafloor/get_additional_spawns(var/value, var/turf/T)
	var/val = min(9,max(0,round((value/cell_range)*10)))
	if(isnull(val)) val = 0
	switch(val)
		if(2)
			if(prob(5))
				var/mob_type = pick(typesof(/mob/living/aquatic))
				new mob_type(T)
		if(6)
			if(prob(60))
				new /obj/structure/seaweed(T)
			if(prob(5))
				var/mob_type = pick(typesof(/mob/living/aquatic))
				new mob_type(T)
		if(7)
			if(prob(60))
				new /obj/structure/seaweed(T)
			else if(prob(30))
				new /obj/structure/seaweed/large(T)
			else
				new /obj/structure/seaweed/glow(T)
		if(8)
			if(prob(60))
				new /obj/structure/seaweed/glow(T)
			else if(prob(30))
				new /obj/structure/seaweed(T)
			else
				new /obj/structure/seaweed/large(T)
		if(9)
			if(prob(70))
				new /obj/structure/seaweed/large(T)
			else
				new /obj/structure/seaweed/glow(T)

	switch(val)
		if(6)
			T.icon_state = "mud_light"
		if(7 to 9)
			T.icon_state = "mud_dark"