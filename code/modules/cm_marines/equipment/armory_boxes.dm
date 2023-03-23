//******************************************BASE KITS*******************************************/
/obj/item/storage/box/kit/armory
	icon = 'icons/obj/items/storage.dmi'
	icon_state = "kit_case"
	var/kit_overlay = null
	w_class = SIZE_HUGE
	storage_slots = 14
	slowdown = 1
	can_hold = list() //Nada. Once you take the stuff out it doesn't fit back in.
	foldable = null

/obj/item/storage/box/kit/armory/update_icon()
	if(LAZYLEN(overlays))
		overlays.Cut()
	if(LAZYLEN(contents))
		icon_state = "kit_case"
		overlays += image(icon, kit_overlay)
	else
		icon_state = "kit_case_e"

//******************************************COMMAND KITS*******************************************/
//*****************************A way for COMMAND to get loadouts easily****************************/
/obj/item/storage/box/kit/armory/command/corpsman // Base corpsman loadout
	name = "\improper Corpsman equipment case"
	desc = "A large case containing an advanced corpsman loadout for Staff Officers to use during deployment.\n\nContains a corpsman loadout with 3 advanced first aid kits, 3 defibrillators, a full lifesaver belt, a gun (varies based on vendor choice) and plenty of ammunition to carry on your armor and webbing.\nTo take the webbing out of it, drop it on the floor. Drag this sprite onto yourself to open it up! NOTE: You cannot put items back inside this case."

/obj/item/storage/box/kit/armory/command/engineer // Base engineer loadout
	name = "\improper Engineer equipment case"
	desc = "A large case containing an engineer loadout for Staff Officers to use during deployment.\n\nContains an engineer loadout with a backpack that holds materials with plenty of remaining capacity, a tool belt, construction pouch, a gun (varies based on vendor choice) and plenty of ammunition to carry on your armor and webbing.\nTo take the webbing out of it, drop it on the floor. Drag this sprite onto yourself to open it up! NOTE: You cannot put items back inside this case."

/obj/item/storage/box/kit/armory/command/rifleman // Base PFC++ loadout
	name = "\improper Advanced equipment case"
	desc = "A large case containing a standard loadout to be vended from armories.\n\nContains light armor and a gun (varies based on vendor choice) with plenty of ammunition to carry on your armor and webbing.\nTo take the webbing out of it, drop it on the floor. Drag this sprite onto yourself to open it up! NOTE: You cannot put items back inside this case."

// Presets
/obj/item/storage/box/kit/armory/command/corpsman/m39/fill_preset_inventory()
	new /obj/item/storage/belt/medical/lifesaver/full/command(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine/medic(src)
	new /obj/item/storage/backpack/marine/loaded(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/clothing/suit/storage/marine/light/SO(src)
	new /obj/item/storage/pouch/medical/full/corpsman(src)
	new /obj/item/storage/pouch/magazine/large/corpsman(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/weapon/gun/smg/m39(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/attachable/lasersight(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)

/obj/item/storage/box/kit/armory/command/corpsman/m41a/fill_preset_inventory()
	new /obj/item/storage/belt/medical/lifesaver/full/command(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine(src)
	new /obj/item/storage/backpack/marine/loaded(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/clothing/suit/storage/marine/light/SO(src)
	new /obj/item/storage/pouch/medical/full/corpsman(src)
	new /obj/item/storage/pouch/magazine/large/corpsman/rifle(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/weapon/gun/rifle/m41a(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)

/obj/item/storage/box/kit/armory/command/engineer/m39/fill_preset_inventory()
	new /obj/item/storage/belt/utility/full(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine/tech(src)
	new /obj/item/storage/backpack/marine/engineerpack/command(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/clothing/suit/storage/marine/light/SO(src)
	new /obj/item/storage/pouch/construction/full(src)
	new /obj/item/storage/pouch/magazine/large/corpsman(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/weapon/gun/smg/m39(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/attachable/lasersight(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)

/obj/item/storage/box/kit/armory/command/engineer/m41a/fill_preset_inventory()
	new /obj/item/storage/belt/utility/full(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine/tech(src)
	new /obj/item/storage/backpack/marine/engineerpack/command(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/clothing/suit/storage/marine/light/SO(src)
	new /obj/item/storage/pouch/construction/full(src)
	new /obj/item/storage/pouch/magazine/large/corpsman/rifle(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/weapon/gun/rifle/m41a(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)

/obj/item/storage/box/kit/armory/command/rifleman/m39/fill_preset_inventory()
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/storage/backpack/marine(src)
	new /obj/item/clothing/suit/storage/marine/light(src)
	new /obj/item/storage/pouch/magazine/large/corpsman(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/device/binoculars/range/designator(src)
	new /obj/item/weapon/gun/smg/m39(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/attachable/lasersight(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)

/obj/item/storage/box/kit/armory/command/rifleman/m39/strict/fill_preset_inventory() // Strict variant that uses Officer armor and won't give you some other things like a HUD.
	new /obj/item/clothing/head/helmet/marine(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/storage/backpack/marine(src)
	new /obj/item/clothing/suit/storage/marine/MP/SO(src)
	new /obj/item/storage/pouch/magazine/large/corpsman(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/device/binoculars/range/designator(src)
	new /obj/item/weapon/gun/smg/m39(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)

/obj/item/storage/box/kit/armory/command/rifleman/m41a/fill_preset_inventory()
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/storage/backpack/marine(src)
	new /obj/item/clothing/suit/storage/marine/light(src)
	new /obj/item/storage/pouch/magazine/large/corpsman/rifle(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/device/binoculars/range/designator(src)
	new /obj/item/weapon/gun/rifle/m41a(src)
	new /obj/item/attachable/magnetic_harness(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)

/obj/item/storage/box/kit/armory/command/rifleman/m41a/strict/fill_preset_inventory() // Strict variant that uses Officer armor and won't give you some other things like a HUD or attachments. For armory.
	new /obj/item/clothing/head/helmet/marine(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/storage/backpack/marine(src)
	new /obj/item/clothing/suit/storage/marine/MP/SO(src)
	new /obj/item/storage/pouch/magazine/large/corpsman/rifle(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/device/binoculars/range/designator(src)
	new /obj/item/weapon/gun/rifle/m41a(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)
	new /obj/item/ammo_magazine/rifle/extended(src)


//******************************************ARMORY KITS*******************************************/
//*****************************A way for crew to get loadouts easily******************************/

/obj/item/storage/box/kit/armory/handgun // for normal armory
	icon_state = "guncase"

/obj/item/storage/box/kit/armory/handgun/update_icon()
	if(LAZYLEN(overlays))
		overlays.Cut()
	if(LAZYLEN(contents))
		icon_state = "guncase"
		overlays += image(icon, kit_overlay)
	else
		icon_state = "guncase_e"

/obj/item/storage/box/kit/armory/handgun // Base handgun loadout
	name = "\improper Handgun equipment case"
	desc = "A case containing a weapon. A label on it details instructions on how to use the gun inside it properly and safely, <i>as if</i>.\n\nContains a handgun (based on vendor choice) and some ammunition for it, alongside a light armor vest.\nTo take the webbing out of it, drop it on the floor. Drag this sprite onto yourself to open it up! NOTE: You cannot put items back inside this case."

/obj/item/storage/box/kit/armory/handgun/emergency/fill_preset_inventory()
	new /obj/item/storage/belt/medical/lifesaver/full/command(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/clothing/head/helmet/marine/medic(src)
	new /obj/item/storage/backpack/marine/loaded(src)
	new /obj/item/clothing/shoes/marine/knife(src)
	new /obj/item/clothing/suit/storage/marine/light/vest(src)
	new /obj/item/clothing/accessory/storage/webbing(src)
	new /obj/item/weapon/gun/smg/m39(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
	new /obj/item/ammo_magazine/smg/m39/extended(src)
