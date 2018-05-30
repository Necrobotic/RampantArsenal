local artillery = {}

local recipeUtils = require("utils/RecipeUtils")
local technologyUtils = require("utils/TechnologyUtils")
local projectileUtils = require("utils/ProjectileUtils")
local ammoUtils = require("utils/AmmoUtils")

local makeAmmo = ammoUtils.makeAmmo
local addEffectToTech = technologyUtils.addEffectToTech
local makeArtilleryShell = projectileUtils.makeArtilleryShell
local makeRecipe = recipeUtils.makeRecipe

function artillery.enable()
    
    local incendiaryArtilleryShellAmmo = makeAmmo({
    	    name = "incendiary-artillery",
    	    icon = "__RampantArsenal__/graphics/icons/incendiary-artillery-shell.png",
	    order = "d[explosive-cannon-shell]-d[incendiary]",
    	    ammoType = {
		category = "artillery-shell",
		target_type = "position",
		action =
		    {
			type = "direct",
			action_delivery =
			    {
				type = "artillery",
				projectile = makeArtilleryShell({
					name = "incendiary"
				}),
				starting_speed = 1,
				direction_deviation = 0,
				range_deviation = 0,
				source_effects =
				    {
					type = "create-explosion",
					entity_name = "artillery-cannon-muzzle-flash"
				    },
			    }
		    },
	    }	    
    })
    
    local incendiaryArtilleryRecipe = makeRecipe({
	    name = "incendiary-artillery-shell",
	    icon = "__RampantArsenal__/graphics/icons/incendiary-artillery-shell.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"artillery-shell", 1},
		{"steel-plate", 1}
	    },
	    result = incendiaryArtilleryShellAmmo,
    })

    addEffectToTech("incendiary-artillery-shells",
		    {
			type = "unlock-recipe",
			recipe = incendiaryArtilleryRecipe,
    })
    
    local heArtilleryShellAmmo = makeAmmo({
    	    name = "he-artillery",
    	    icon = "__RampantArsenal__/graphics/icons/he-artillery-shell.png",
	    order = "d[explosive-cannon-shell]-d[he]",
    	    ammoType = {
		category = "artillery-shell",
		target_type = "position",
		action =
		    {
			type = "direct",
			action_delivery =
			    {
				type = "artillery",
				projectile = makeArtilleryShell({
					name = "he"
				}),
				starting_speed = 1,
				direction_deviation = 0,
				range_deviation = 0,
				source_effects =
				    {
					type = "create-explosion",
					entity_name = "artillery-cannon-muzzle-flash"
				    },
			    }
		    },
	    }	    
    })
    
    local heArtilleryRecipe = makeRecipe({
	    name = "he-artillery-shell",
	    icon = "__RampantArsenal__/graphics/icons/he-artillery-shell.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"artillery-shell", 1},
		{"he-grenade-capsule-rampant-arsenal", 5}
	    },
	    result = heArtilleryShellAmmo,
    })

    addEffectToTech("he-artillery-shells",
		    {
			type = "unlock-recipe",
			recipe = heArtilleryRecipe,
    })
    
    local bioArtilleryShellAmmo = makeAmmo({
    	    name = "bio-artillery",
    	    icon = "__RampantArsenal__/graphics/icons/bio-artillery-shell.png",
	    order = "d[explosive-cannon-shell]-d[bio]",
    	    ammoType = {
		category = "artillery-shell",
		target_type = "position",
		action =
		    {
			type = "direct",
			action_delivery =
			    {
				type = "artillery",
				projectile = makeArtilleryShell({
					name = "bio"
				}),
				starting_speed = 1,
				direction_deviation = 0,
				range_deviation = 0,
				source_effects =
				    {
					type = "create-explosion",
					entity_name = "artillery-cannon-muzzle-flash"
				    },
			    }
		    },
	    }	    
    })
    
    local bioArtilleryRecipe = makeRecipe({
	    name = "bio-artillery-shell",
	    icon = "__RampantArsenal__/graphics/icons/bio-artillery-shell.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"artillery-shell", 1},
		{"toxic-capsule-rampant-arsenal", 5}
	    },
	    result = bioArtilleryShellAmmo,
    })

    addEffectToTech("bio-artillery-shells",
		    {
			type = "unlock-recipe",
			recipe = bioArtilleryRecipe,
    })

    
    local nuclearArtilleryShellAmmo = makeAmmo({
    	    name = "nuclear-artillery",
    	    icon = "__RampantArsenal__/graphics/icons/nuclear-artillery-shell.png",
	    order = "d[explosive-cannon-shell]-d[nuclear]",
    	    ammoType = {
		category = "artillery-shell",
		target_type = "position",
		action =
		    {
			type = "direct",
			action_delivery =
			    {
				type = "artillery",
				projectile = makeArtilleryShell({
					name = "nuclear",
					action = {
					    type = "direct",
					    action_delivery =
						{
						    type = "instant",
						    target_effects =
							{
							    {
								repeat_count = 100,
								type = "create-trivial-smoke",
								smoke_name = "nuclear-smoke",
								offset_deviation = {{-1, -1}, {1, 1}},
								slow_down_factor = 1,
								starting_frame = 3,
								starting_frame_deviation = 5,
								starting_frame_speed = 0,
								starting_frame_speed_deviation = 5,
								speed_from_center = 0.5,
								speed_deviation = 0.2
							    },
							    {
								type = "create-entity",
								entity_name = "explosion"
							    },
							    {
								type = "damage",
								damage = {amount = 400, type = "explosion"}
							    },
							    {
								type = "create-entity",
								entity_name = "small-scorchmark",
								check_buildability = true
							    },
							    {
								type = "nested-result",
								action =
								    {
									type = "area",
									target_entities = false,
									repeat_count = 2000,
									radius = 35,
									action_delivery =
									    {
										type = "projectile",
										projectile = "atomic-bomb-wave",
										starting_speed = 0.5
									    }
								    }
							    }
							}
						}
					}
				}),
				starting_speed = 1,
				direction_deviation = 0,
				range_deviation = 0,
				source_effects =
				    {
					type = "create-explosion",
					entity_name = "artillery-cannon-muzzle-flash"
				    },
			    }
		    },
	    }	    
    })
    
    local nuclearArtilleryRecipe = makeRecipe({
	    name = "nuclear-artillery-shell",
	    icon = "__RampantArsenal__/graphics/icons/nuclear-artillery-shell.png",
	    enabled = false,
	    category = "crafting-with-fluid",
	    ingredients = {
		{"artillery-shell", 1},
		{"atomic-bomb", 1}
	    },
	    result = nuclearArtilleryShellAmmo,
    })

    addEffectToTech("atomic-bomb",
		    {
			type = "unlock-recipe",
			recipe = nuclearArtilleryRecipe,
    })
end

return artillery
