if mods["Krastorio2"] then
  -- -- Remove obsolete items
  -- data.raw.recipe["power-armor-mk3-armor-rampant-arsenal"] = nil
  -- data.raw.technology["rampant-arsenal-technology-power-armor-mk3"] = nil

  -- data.raw.recipe["mk3-shield-rampant-arsenal"] = nil
  -- data.raw.technology["rampant-arsenal-technology-shield-equipment-2"] = nil

  -- data.raw.recipe["mk3-battery-rampant-arsenal"] = nil
  -- data.raw.technology["rampant-arsenal-technology-battery-equipment-3"] = nil

  -- data.raw.recipe["mk3-generator-rampant-arsenal"] = nil
  -- data.raw.technology["rampant-arsenal-technology-generator-equipment-2"] = nil

  -- data.raw.recipe["nuclear-generator-rampant-arsenal"] = nil
  -- data.raw.technology["rampant-arsenal-technology-generator-equipment-3"] = nil

  -- Krastorio Upgrade within Rampant Arsenal
  local names = {'pistol-ammo', 'rifle-ammo', 'anti-material-rifle-ammo'}
  for nCount = 1, #names do
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-1"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-2"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-3"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-4"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-5"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-6"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.5 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-damage-7"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.5 })

    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-1"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.1 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-2"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-3"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-4"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-5"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-6"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-bullet-speed-7"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 1 })
  end

  local names = {'railgun-shell'}
  for nCount = 1, #names do
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-damage-1"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.1 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-damage-2"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-damage-3"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-damage-4"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-damage-5"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-damage-6"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.4 })

    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-speed-1"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-speed-2"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-speed-3"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-speed-4"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.6 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-shell-speed-5"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 1 })
  end
  local names = {'kr-railgun-turret'}
  for nCount = 1, #names do
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-1"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.1 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-2"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.1 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-3"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-4"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-5"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-6"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-cannon-turret-damage-7"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.5 })
  end

  local names = {'heavy-rocket', 'missiles-for-turrets'}
  for nCount = 1, #names do
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-1"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-2"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-3"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-4"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-5"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-6"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.5 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-damage-7"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.5 })

    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-1"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-2"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-3"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-4"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-5"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-6"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 0.6 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-speed-7"]['effects'],
                 {type = "gun-speed", ammo_category = names[nCount], modifier = 1 })
  end
  local names = {'kr-rocket-turret'}
  for nCount = 1, #names do
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-1"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.1 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-2"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.1 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-3"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-4"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-5"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-6"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-rocket-turret-damage-7"]['effects'],
                 {type = "turret-attack", turret_id = names[nCount], modifier = 0.5 })
  end

  local names = {'impulse-rifle'}
  for nCount = 1, #names do
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-1"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-2"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.2 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-3"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-4"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.3 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-5"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-6"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.4 })
    table.insert(data.raw['technology']["rampant-arsenal-technology-energy-weapons-damage-7"]['effects'],
                 {type = "ammo-damage", ammo_category = names[nCount], modifier = 0.5 })
  end

  table.insert(data.raw['technology']["rampant-arsenal-technology-artillery-turret-damage-1"]['effects'],
               {type = "turret-attack", turret_id = "kr-laser-artillery-turret", modifier = 0.4 })
end
