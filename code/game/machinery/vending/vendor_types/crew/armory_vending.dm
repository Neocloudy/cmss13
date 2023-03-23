// Armory Racks
// 	Armory loadouts for staff.
/obj/structure/machinery/cm_vending/clothing/armory // For the CIC armory
	name = "\improper ColMarTech Advanced Armory Rack"
	desc = "An automated armory vendor for Command staff to use. This one has no loadout restrictions."
	req_access = list(ACCESS_MARINE_COMMAND)
	vendor_role = list(JOB_SO, JOB_XO)

/obj/structure/machinery/cm_vending/clothing/armory/get_listed_products(mob/user)
	return GLOB.cm_vending_clothing_armory_free

//------------GEAR---------------

GLOBAL_LIST_INIT(cm_vending_clothing_armory_free, list(
		list("LOADOUT (CHOOSE 1)", 0, null, null, null),
		list("Command Standard (M41A)", 0, /obj/item/storage/box/kit/armory/command/rifleman/m41a, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_RECOMMENDED),
		list("Command Standard (M39)", 0, /obj/item/storage/box/kit/armory/command/rifleman/m39, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
		list("Command Corpsman (M39)", 0, /obj/item/storage/box/kit/armory/command/corpsman/m39, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
		list("Command Corpsman (M41A)", 0, /obj/item/storage/box/kit/armory/command/corpsman/m41a, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
		list("Command Engineer (M39)", 0, /obj/item/storage/box/kit/armory/command/engineer/m39, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
		list("Command Engineer (M41A)", 0, /obj/item/storage/box/kit/armory/command/engineer/m41a, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
	))

/obj/structure/machinery/cm_vending/clothing/armory/strict // For the CIC armory
	name = "\improper ColMarTech Standard Armory Rack"
	desc = "An automated armory vendor for Command staff to use. This one is restricted to only standard loadouts."
	req_access = list(ACCESS_MARINE_COMMAND)
	vendor_role = list(JOB_SO, JOB_XO)

/obj/structure/machinery/cm_vending/clothing/armory/strict/get_listed_products(mob/user)
	return GLOB.cm_vending_clothing_armory_strict

//------------GEAR---------------

GLOBAL_LIST_INIT(cm_vending_clothing_armory_strict, list(
		list("LOADOUT (CHOOSE 1)", 0, null, null, null),
		list("Command Standard (M41A)", 0, /obj/item/storage/box/kit/armory/command/rifleman/m41a/strict, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_RECOMMENDED),
		list("Command Standard (M39)", 0, /obj/item/storage/box/kit/armory/command/rifleman/m39/strict, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
	))

/obj/structure/machinery/cm_vending/clothing/armory/pistol // For the department armories
	name = "\improper ColMarTech Basic Armory Rack"
	desc = "An automated armory vendor for non-combative staff to use in emergencies, a faint label reads: <i>FOR EMERGENCY USE ONLY - READ LABEL ON CASE THOROUGHLY BEFORE USE</i>. This one is restricted to only dispense handguns and handgun ammunition."
	req_access = list()
	vendor_role = list(JOB_DOCTOR, JOB_NURSE, JOB_MAINT_TECH)

/obj/structure/machinery/cm_vending/clothing/armory/pistol/get_listed_products(mob/user)
	return GLOB.cm_vending_clothing_armory_pistol

//------------GEAR---------------

GLOBAL_LIST_INIT(cm_vending_clothing_armory_pistol, list(
		list("LOADOUT (CHOOSE 1)", 0, null, null, null),
		list("Command Standard (M41A)", 0, /obj/item/storage/box/kit/armory/command/rifleman/m41a/strict, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_RECOMMENDED),
		list("Command Standard (M39)", 0, /obj/item/storage/box/kit/armory/command/rifleman/m39/strict, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_REGULAR),
	))

