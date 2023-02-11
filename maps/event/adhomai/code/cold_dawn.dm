/area/palace_free
	name = "Palace of the Free Tajara"
	icon_state = "bluenew"
	requires_power = FALSE
	dynamic_lighting = TRUE
	no_light_control = FALSE
	base_turf = /turf/simulated/floor/exoplanet/mineral/adhomai
	flags = RAD_SHIELDED

/obj/item/clothing/under/tajaran/pra_uniform/guard
	name = "republican guard uniform"
	desc = "A fancy uniform used by the elites of the Republican Guard."
	icon_state = "republican_guard"
	item_state = "republican_guard"

/obj/item/clothing/head/beret/tajaran/pra/guard
	name = "republican guard beret"
	desc = "A fancy hat used by the elites of the Republican Guard."
	icon_state = "republican_guard_beret"
	item_state = "republican_guard_beret"


/obj/structure/silo
	name = "silo"
	desc = "An ominous structure."
	icon = 'icons/obj/silo.dmi'
	icon_state = "hidden"

/obj/structure/silo/proc/open()
	flick("reveal", src)
	icon_state = "revealed"

/datum/outfit/admin/pra_soldier_vr
	name = "People's Republic of Adhomai Soldier"

	uniform = /obj/item/clothing/under/tajaran/pra_uniform
	head = /obj/item/clothing/head/beret/tajaran/pra
	suit = /obj/item/clothing/suit/storage/tajaran/pra_jacket/armored
	back = /obj/item/gun/projectile/shotgun/pump/rifle
	shoes = /obj/item/clothing/shoes/tajara/combat
	belt = /obj/item/storage/belt/military
	accessory = /obj/item/clothing/accessory/badge/hadii_card
	l_ear = null
	belt_contents = list(
		/obj/item/ammo_magazine/boltaction = 4,
		/obj/item/grenade/frag = 2,
		/obj/item/gun/projectile/pistol/adhomai = 1,
		/obj/item/ammo_magazine/mc9mm = 2 )
	id = /obj/item/card/id

/datum/outfit/admin/pra_soldier_vr/get_id_access()
	return list(access_pra)

/datum/outfit/admin/pra_soldier_vr/commissar
	name = "People's Republic of Adhomai Party Commissar"

	uniform = /obj/item/clothing/under/tajaran/army_commissar
	head = /obj/item/clothing/head/tajaran/army_commissar
	suit = null
	belt = /obj/item/gun/projectile/deagle/adhomai
	belt_contents = null
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
						/obj/item/ammo_magazine/a50 = 3,
						/obj/item/material/knife/trench = 1
						)
	l_hand = /obj/item/device/megaphone

	accessory = /obj/item/clothing/accessory/hadii_pin

/datum/outfit/admin/pra_soldier_vr/guard
	name = "Republican Guard"

	uniform = /obj/item/clothing/under/tajaran/pra_uniform/guard
	head = /obj/item/clothing/head/beret/tajaran/pra/guard
	suit = null
	back = /obj/item/gun/projectile/automatic/rifle/adhomian

	belt_contents = list(
		/obj/item/ammo_magazine/boltaction = 4,
		/obj/item/grenade/frag = 2,
		/obj/item/gun/projectile/pistol/adhomai = 1,
		/obj/item/ammo_magazine/mc9mm = 1,
		/obj/item/material/knife/trench = 1)


/datum/outfit/admin/ala_base_vr
	name = "Adhomai Liberation Army Soldier"

	uniform = /obj/item/clothing/under/tajaran/ala
	head = /obj/item/clothing/head/beret/tajaran/dpra/alt
	back = /obj/item/gun/projectile/shotgun/pump/rifle
	shoes = /obj/item/clothing/shoes/tajara/combat
	belt = /obj/item/storage/belt/military
	l_ear = null

	belt_contents = list(
		/obj/item/ammo_magazine/boltaction = 4,
		/obj/item/grenade/frag = 2,
		/obj/item/gun/projectile/silenced = 1,
		/obj/item/ammo_magazine/c45m = 2)

	id = /obj/item/card/id

/datum/outfit/admin/ala_base_vr/get_id_access()
	return list(access_dpra)

/datum/outfit/admin/ala_base_vr/sniper
	name = "Das’nrra Marksmen"

	uniform = /obj/item/clothing/under/tajaran/ala/black
	head = /obj/item/clothing/head/beret/tajaran/dpra/alt
	back = /obj/item/gun/projectile/dragunov


	belt_contents = list(
		/obj/item/ammo_magazine/d762 = 3,
		/obj/item/gun/projectile/silenced = 1,
		/obj/item/ammo_magazine/c45m = 2)

/datum/outfit/admin/ala_base_vr/spy
	name = "Hotak's Commando"

	uniform = /obj/item/clothing/under/tajaran/ala/wraps
	head = /obj/item/clothing/head/tajaran/ala_wraps
	belt = /obj/item/gun/projectile/shotgun/foldable
	back = null
	accessory = /obj/item/clothing/accessory/storage/bandolier
	accessory_contents = list(/obj/item/ammo_casing/shotgun = 5,
							/obj/item/ammo_casing/shotgun/pellet = 5)

	back = /obj/item/gun/projectile/shotgun/pump/rifle
	belt_contents = null

	backpack_contents = list(
		/obj/item/grenade/frag = 2,
		/obj/item/material/knife/trench = 1,
		/obj/item/gun/projectile/silenced = 1,
		/obj/item/ammo_magazine/c45m = 2)


//tanks

/mob/living/heavy_vehicle/premade/pra_tank
	name = "Nav'twir MK.III light tank"
	desc = "An early light tank model used by the People's Republic of Adhomai."
	icon_state = "durand"

	h_head = null
	e_head = /obj/item/mech_component/sensors/combat/tank
	e_body = /obj/item/mech_component/chassis/combat/tank
	e_arms = /obj/item/mech_component/manipulators/combat/tank
	e_legs = /obj/item/mech_component/propulsion/tracks/tank
	e_color = "#78866b"

	h_r_shoulder = /obj/item/mecha_equipment/mounted_system/combat/smg/tank
	h_l_shoulder = /obj/item/mecha_equipment/mounted_system/combat/tank_cannon

/obj/item/mech_component/manipulators/combat/tank
	name = "tank cannon"
	exosuit_desc_string = "a light tank cannon"
	desc = "A ballistic cannon used by an Adhomian tank."
	icon_state = "pra_cannon"

/obj/item/mech_component/propulsion/tracks/tank
	icon_state = "treads"

/obj/item/mech_component/sensors/combat/tank
	name = "tank turret"
	gender = PLURAL
	exosuit_desc_string = "tank turret"
	desc = "The cockpit of an Adhomian tank."
	icon_state = "pra_turret"

/obj/item/mech_component/chassis/combat/tank
	name = "tank hull"
	hatch_descriptor = "canopy"
	exosuit_desc_string = "an armored hull"
	desc = "The hull of an adhomian tank."
	icon_state = "pra_hull"
	transparent_cabin = FALSE

/mob/living/heavy_vehicle/premade/dpra_tank
	name = "Yve'kha III light tank"
	desc = "An light tank model used by the Adhomai Liberation Army."
	icon_state = "durand"

	h_head = null
	e_head = /obj/item/mech_component/sensors/combat/tank/ala
	e_body = /obj/item/mech_component/chassis/combat/tank/ala
	e_arms = /obj/item/mech_component/manipulators/combat/tank/ala
	e_legs = /obj/item/mech_component/propulsion/tracks/tank
	e_color = COLOR_DARK_GUNMETAL

	h_r_shoulder = /obj/item/mecha_equipment/mounted_system/combat/smg/tank
	h_l_shoulder = /obj/item/mecha_equipment/mounted_system/combat/tank_cannon

/obj/item/mech_component/manipulators/combat/tank/ala
	icon_state = "dpra_cannon"

/obj/item/mech_component/sensors/combat/tank/ala
	icon_state = "dpra_turret"

/obj/item/mech_component/chassis/combat/tank/ala
	icon_state = "dpra_hull"


/mob/living/heavy_vehicle/premade/nka_tank
	name = "Zhsram II light tank"
	desc = "A pre-war light tank model used by the New Kingdom of Adhomai."
	icon_state = "durand"

	h_head = null
	e_head = /obj/item/mech_component/sensors/combat/tank/nka
	e_body = /obj/item/mech_component/chassis/combat/tank/nka
	e_arms = /obj/item/mech_component/manipulators/combat/tank/nka
	e_legs = /obj/item/mech_component/propulsion/tracks/tank
	e_color = COLOR_TITANIUM

	h_r_shoulder = /obj/item/mecha_equipment/mounted_system/combat/smg/tank
	h_l_shoulder = /obj/item/mecha_equipment/mounted_system/combat/tank_cannon

/obj/item/mech_component/manipulators/combat/tank/nka
	icon_state = "nka_cannon"

/obj/item/mech_component/sensors/combat/tank/nka
	icon_state = "nka_turret"

/obj/item/mech_component/chassis/combat/tank/nka
	icon_state = "nka_hull"


/obj/item/mecha_equipment/mounted_system/combat/smg/tank
	icon_state = "tank_lmg"

/obj/item/mecha_equipment/mounted_system/combat/tank_cannon
	name = "tank cannon"
	desc = "A tank cannon."
	icon_state = "tank_canon"
	holding_type = /obj/item/gun/energy/mountedcannon/tank

/obj/item/gun/energy/mountedcannon/tank
	projectile_type = /obj/item/projectile/bullet/tank

/obj/item/projectile/bullet/tank
	name = "warhead"
	icon_state = "missile"
	damage = 50
	armor_penetration = 30
	anti_materiel_potential = 4
	embed = FALSE
	penetrating = FALSE
	var/heavy_impact_range = 1

/obj/item/projectile/bullet/tank/on_impact(var/atom/A)
	explosion(A, -1, 0, 2)
	..()

//egg

/mob/living/heavy_vehicle/premade/pra_egg
	name = "P'kus-3 exosuit"
	desc = "An exosuit developed by the People's Republic of Adhomai for the Division Experimental Exosuit."
	icon_state = "durand"

	e_head = /obj/item/mech_component/sensors/pra_egg
	e_body = /obj/item/mech_component/chassis/pra_egg
	e_arms = /obj/item/mech_component/manipulators/pra_egg
	e_legs = /obj/item/mech_component/propulsion/pra_egg
	e_color = COLOR_STEEL
	h_head = null
//	h_r_hand = /obj/item/mecha_equipment/mounted_system/combat/smg/pra_egg

/obj/item/mech_component/manipulators/pra_egg
	name = "p'kus-3 arms"
	exosuit_desc_string = "flexible arms"
	desc = "Robotics arms designed to carry large weapons."
	icon_state = "egg_arms"
	melee_damage = 15
	action_delay = 5
	max_damage = 100
	power_use = 5000
	has_hardpoints = list(HARDPOINT_RIGHT_HAND, HARDPOINT_LEFT_HAND)

/obj/item/mech_component/propulsion/pra_egg
	name = "p'kus-3 legs"
	exosuit_desc_string = "hydraulic legs"
	desc = "Strong legs adapted for the Adhomian rought terrain."
	icon_state = "egg_legs"
	move_delay = 3
	turn_delay = 3
	max_damage = 100
	power_use = 5000
	trample_damage = 20

/obj/item/mech_component/sensors/pra_egg
	name = "p'kus-3 sensors"
	gender = PLURAL
	exosuit_desc_string = "weather-resistant sensors"
	desc = "A round cockpit in the shape of an egg. Its sensors are adapted to the Adhomian winds and hail."
	icon_state = "egg_head"
	max_damage = 50
	power_use = 50000
	vision_flags = SEE_MOBS
	see_invisible = SEE_INVISIBLE_NOLIGHTING

/obj/item/mech_component/sensors/pra_egg/prebuild()
	..()
	software = new(src)
	software.installed_software = list(MECH_SOFTWARE_WEAPONS, MECH_SOFTWARE_UTILITY)

/obj/item/mech_component/chassis/pra_egg
	name = "p'kus-3 chassis"
	hatch_descriptor = "canopy"
	pilot_coverage = 100
	exosuit_desc_string = "a light armored chassis"
	desc = "A lightweight composite frame keeps the armor of this chassis respectable, but the interior spacious."
	icon_state = "egg_body"
	max_damage = 150
	power_use = 2500

/obj/item/mech_component/chassis/pra_egg/prebuild()
	. = ..()
	mech_armor = new /obj/item/robot_parts/robot_component/armor/mech(src)

/obj/item/mecha_equipment/mounted_system/combat/smg/pra_egg
	icon_state = "pra_egg_smg"
	restricted_hardpoints = list(HARDPOINT_RIGHT_HAND)


/mob/living/heavy_vehicle/premade/pra_egg/armored
	desc = "An exosuit developed by the People's Republic of Adhomai for the Division Experimental Exosuit. This one is a heavily armored version."
	icon_state = "durand"

	e_head = /obj/item/mech_component/sensors/pra_egg/armored
	e_body = /obj/item/mech_component/chassis/pra_egg/armored
	e_arms = /obj/item/mech_component/manipulators/pra_egg/armored

	h_r_hand = /obj/item/mecha_equipment/mounted_system/combat/smg/pra_egg

/obj/item/mech_component/manipulators/pra_egg/armored
	name = "armored p'kus-3 arms"
	exosuit_desc_string = "armored flexible arms"
	desc = "Armored robotics arms designed to carry large weapons."
	icon_state = "strong_egg_arms"
	melee_damage = 20
	max_damage = 120

/obj/item/mech_component/sensors/pra_egg/armored
	name = "armored p'kus-3 sensors"
	exosuit_desc_string = "weather-resistant armored sensors"
	desc = "An armored cockpit in the shape of an egg. Its sensors are adapted to the Adhomian winds and hail."
	icon_state = "strong_egg_head"
	max_damage = 120

/obj/item/mech_component/chassis/pra_egg/armored
	name = "armor p'kus-3 chassis"
	exosuit_desc_string = "an armored chassis"
	desc = "A armored composite frame keeps the armor of this chassis respectable, but the interior spacious."
	icon_state = "strong_egg_body"
	max_damage = 150
	power_use = 2500

/obj/item/mech_component/chassis/pra_egg/armored/prebuild()
	. = ..()
	mech_armor = new /obj/item/robot_parts/robot_component/armor/mech/combat(src)

/obj/item/badmoon_map
	name = "adhomian map replica"
	desc = "A replica of an old adhomian map."
	icon = 'icons/obj/cold_dawn.dmi'
	icon_state = "map"
	w_class = ITEMSIZE_SMALL

/mob/living/bot/beer
	name = "alcohol serving bot"
	desc = "A small bot full of alcohol."
	icon = 'icons/obj/cold_dawn.dmi'
	icon_state = "beerbot"

/mob/living/bot/beer/attackby(var/obj/item/O, var/mob/user)
	..()
	if(!user.Adjacent(src)) return
	var/obj/item/reagent_containers/RG = O
	if (istype(RG) && RG.is_open_container())
		if(RG.reagents.total_volume >= RG.volume)
			to_chat(usr, SPAN_WARNING("\The [RG] is already full."))
			return
		RG.reagents.add_reagent(/singleton/reagent/alcohol/victorygin, min(RG.volume - RG.reagents.total_volume))
		playsound(src.loc, 'sound/machines/reagent_dispense.ogg', 25, 1)

/mob/living/bot/beer/think()
	..()
	if(prob(5))
		var/moving_to = 0 // otherwise it always picks 4, fuck if I know.   Did I mention fuck BYOND
		moving_to = pick(alldirs)
		set_dir(moving_to)			//How about we turn them the direction they are moving, yay.
		Move(get_step(src,moving_to))

/mob/living/bot/beer/death()
	..(null, "blows apart!")
	var/T = get_turf(src)
	new /obj/effect/gibspawner/robot(T)
	spark(T, 1, alldirs)
	qdel(src)

/obj/structure/tank_dispenser
	name = "tank dispenser"
	desc = "A virtual reality capable of summoning a tank."
	icon = 'icons/obj/glasscasebutton.dmi'
	icon_state = "c1"
	var/used = FALSE
	var/tank_type = /mob/living/heavy_vehicle/premade/pra_tank

/obj/structure/tank_dispenser/Initialize()
	. = ..()
	add_overlay("b41")

/obj/structure/tank_dispenser/examine(mob/user)
	. = ..()
	if(used)
		to_chat(user, SPAN_WARNING("\The [src] is not ready to dispense another tank."))
	else
		to_chat(user, SPAN_NOTICE("\The [src] is ready."))

/obj/structure/tank_dispenser/attack_hand(mob/user as mob)
	if(used)
		return
	spawn_tank()

/obj/structure/tank_dispenser/proc/spawn_tank()
	used = TRUE
	new tank_type (get_turf(src))

	addtimer(CALLBACK(src, PROC_REF(rearm)), 5 MINUTES)

/obj/structure/tank_dispenser/proc/rearm()
	used = FALSE

/obj/structure/tank_dispenser/ala
	tank_type = /mob/living/heavy_vehicle/premade/dpra_tank

