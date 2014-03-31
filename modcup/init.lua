-- Mod_Cup --      Code Libre Ze.-= Minetest Lua Steinheim =-
--
-- REGISTER NODE

-- Coupe Or

minetest.register_node("modcup:coupeOr",{
  description = 'coupeOr',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "CoupeOr(appartient a "..
				meta:get_string("owner")..")")
	end,
  can_dig = function(pos, player)
          local meta = minetest.env:get_meta(pos)
          local inv = meta:get_inventory()
  return minetest.setting_get("name") == player:get_player_name() 
     end,

  drawtype = 'nodebox',
  tiles = {
    'or1.png',
    'or1.png',
    'or4.png',
    'or4.png',
    'or4.png',
    'or1b.png',
  },
  selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

  node_box = {
  	type = "fixed",
		fixed = {
			{-0.1875,-0.5,-0.1875,0.1875,-0.4375,0.1875}, 
			{-0.125,-0.5,-0.125,0.125,-0.375,0.125}, 
			{-0.0625,-0.375,-0.0625,0.0625,-0.1875,0.0625}, 
			{-0.125,-0.1875,-0.125,0.125,-0.125,0.125}, 
			{-0.1875,-0.125,-0.1875,0.1875,-0.0625,0.1875}, 
			{-0.1875,-0.125,-0.1875,-0.125,0.125,0.1875}, 
			{0.125,-0.125,-0.1875,0.1875,0.125,0.1875}, 
			{-0.1875,-0.125,0.125,0.1875,0.125,0.1875}, 
			{-0.1875,-0.125,-0.1875,0.1875,0.125,-0.125}, 
			{0.1875,-0.0625,-0.0625,0.25,0.0625,0.0625}, 
			{-0.25,-0.0625,-0.0625,-0.1875,0.0625,0.0625}, 
			{-0.1875,-0.0625,-0.125,0.125,0.0625,0.1875}, 
		}
	}
})

-- Coupe Argent

minetest.register_node("modcup:coupeArgent",{
  description = 'coupeArgent',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "CoupeArgent(appartient a "..
				meta:get_string("owner")..")")
	end,
can_dig = function(pos, player)
          local meta = minetest.env:get_meta(pos)
          local inv = meta:get_inventory()
  return minetest.setting_get("name") == player:get_player_name() 
     end,

  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
    'argent1.png',
    'argent1.png',
    'argent4.png',
    'argent4.png',
    'argent4.png',
    'argent1b.png',
  },
  selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875,-0.5,-0.1875,0.1875,-0.4375,0.1875}, 
			{-0.125,-0.5,-0.125,0.125,-0.375,0.125}, 
			{-0.0625,-0.375,-0.0625,0.0625,-0.1875,0.0625}, 
			{-0.125,-0.1875,-0.125,0.125,-0.125,0.125}, 
			{-0.1875,-0.125,-0.1875,0.1875,-0.0625,0.1875}, 
			{-0.1875,-0.125,-0.1875,-0.125,0.125,0.1875}, 
			{0.125,-0.125,-0.1875,0.1875,0.125,0.1875}, 
			{-0.1875,-0.125,0.125,0.1875,0.125,0.1875}, 
			{-0.1875,-0.125,-0.1875,0.1875,0.125,-0.125}, 
			{0.1875,-0.0625,-0.0625,0.25,0.0625,0.0625}, 
			{-0.25,-0.0625,-0.0625,-0.1875,0.0625,0.0625}, 
			{-0.1875,-0.0625,-0.125,0.125,0.0625,0.1875}, 
		}
	}
})

--Coupe Bronze

minetest.register_node("modcup:coupeBronze",{
  description = 'coupeBronze',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "CoupeBronze(appartient a "..
				meta:get_string("owner")..")")
	end,

  can_dig = function(pos, player)
          local meta = minetest.env:get_meta(pos)
          local inv = meta:get_inventory()
  return minetest.setting_get("name") == player:get_player_name() 
     end,

  drawtype = 'nodebox',
  tiles = {
    'bronze1.png',
    'bronze1.png',
    'bronze4.png',
    'bronze4.png',
    'bronze4.png',
    'bronze1b.png',
  },
  selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875,-0.5,-0.1875,0.1875,-0.4375,0.1875}, 
			{-0.125,-0.5,-0.125,0.125,-0.375,0.125}, 
			{-0.0625,-0.375,-0.0625,0.0625,-0.1875,0.0625}, 
			{-0.125,-0.1875,-0.125,0.125,-0.125,0.125}, 
			{-0.1875,-0.125,-0.1875,0.1875,-0.0625,0.1875}, 
			{-0.1875,-0.125,-0.1875,-0.125,0.125,0.1875}, 
			{0.125,-0.125,-0.1875,0.1875,0.125,0.1875}, 
			{-0.1875,-0.125,0.125,0.1875,0.125,0.1875}, 
			{-0.1875,-0.125,-0.1875,0.1875,0.125,-0.125}, 
			{0.1875,-0.0625,-0.0625,0.25,0.0625,0.0625}, 
			{-0.25,-0.0625,-0.0625,-0.1875,0.0625,0.0625}, 
			{-0.1875,-0.0625,-0.125,0.125,0.0625,0.1875}, 
		}
	}
})

-- Medaille

minetest.register_node("modcup:medaille",{
  description = 'medaille',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Medaille(appartient a "..
				meta:get_string("owner")..")")
	end,

  can_dig = function(pos, player)
          local meta = minetest.env:get_meta(pos)
          local inv = meta:get_inventory()
  return minetest.setting_get("name") == player:get_player_name() 
     end,

  drawtype = 'nodebox',
  tiles = {
    'medaille1.png',
    'medaille1.png',
    'medaille4.png',
    'medaille4.png',
    'medaille4.png',
    'medaille1b.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.125,-0.5,-0.125,0.125,-0.4375,0.0625}, 
			{-0.125,-0.5,-0.0625,0.125,-0.1875,0}, 
		}
	}
})

-- Trophee

minetest.register_node('modcup:trophee', {
  description = 'trophee',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Trophee(appartient a "..
				meta:get_string("owner")..")")
	end,

  can_dig = function(pos, player)
          local meta = minetest.env:get_meta(pos)
          local inv = meta:get_inventory()
  return minetest.setting_get("name") == player:get_player_name() 
     end,

  drawtype = 'nodebox',
  tiles = {
    'trophe1.png',
    'trophe1.png',
    'trophe4.png',
    'trophe4.png',
    'trophe4.png',
    'trophe1b.png',
  },
  selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

node_box = {
		type = "fixed",
		fixed = {
			{-0.1875,-0.5,-0.1875,0.1875,-0.375,0.1875}, 
			{-0.125,-0.5,-0.125,0.125,-0.3125,0.125}, 
			{-0.0625,-0.3125,-0.0625,0.0625,0.0625,0.0625}, 
			{0.125,-0.5,-0.125,0.25,-0.4375,0.125}, 
			{-0.25,-0.5,-0.125,-0.1875,-0.4375,0.125}, 
			{-0.125,-0.5,0.1875,0.125,-0.4375,0.25}, 
			{-0.125,-0.5,-0.25,0.125,-0.4375,-0.1875}, 
			{-0.125,0.0625,-0.125,0.125,0.1875,0.125}, 
			{-0.1875,0.1875,-0.1875,0.1875,0.25,0.1875}, 
			{-0.25,0.25,-0.25,0.25,0.3125,0.25}, 
			{-0.1875,-0.1875,-0.1875,0.1875,-0.125,0.1875}, 
			{-0.25,0.3125,0.1875,0.25,0.5,0.25}, 			      {-0.25,0.3125,-0.25,-0.1875,0.5,0.25}, 
			{0.1875,0.3125,-0.25,0.25,0.5,0.25}, 
			{-0.25,0.25,-0.25,0.25,0.5,-0.1875}, 
			{-0.1875,0.425,-0.1875,0.1875,0.4625,0.1875}, 
			{0.25,0.3125,-0.125,0.3125,0.4375,0.125}, 
			{-0.3125,0.3125,-0.125,-0.25,0.4375,0.125}, 
			{-0.0625,-0.5,-0.25,0.0625,-0.125,-0.1875}, 
			{-0.0625,-0.5,0.1875,0.0625,-0.125,0.25}, 
			{-0.25,-0.5,-0.0625,-0.1875,-0.125,0.0625}, 
			{0.1875,-0.5,-0.0625,0.25,-0.125,0.0625}, 
		}
	}
})


--REGISTER CRAFTS ( crafts a modifier )

minetest.register_craft({
	output = 'modcup:coupeOr',
	recipe = {
		{'wool:white', 'wool:white', 'wool:white'},
     {'default:wood', 'default:wood', 'default:wood'},
                 {"", 'dye:grey', ""}
	}
})

minetest.register_craft({
	output = 'modcup:coupeArgent',
	recipe = {
		{'wool:white', 'wool:white', 'wool:white'},
     {'default:wood', 'default:wood', 'default:wood'},
                 {"", 'dye:grey', ""}
	}
})

minetest.register_craft({
	output = 'modcup:coupeBronze',
	recipe = {
		{'wool:white', 'wool:white', 'wool:white'},
     {'default:wood', 'default:wood', 'default:wood'},
                 {"", 'dye:grey', ""}
	}
})

minetest.register_craft({
	output = 'modcup:medaille',
	recipe = {
		{'wool:white', 'wool:white', 'wool:white'},
     {'default:wood', 'default:wood', 'default:wood'},
                 {"", 'dye:grey', ""}
	}
})

minetest.register_craft({
	output = 'modcup:trophee',
	recipe = {
		{'wool:white', 'wool:white', 'wool:white'},
     {'default:wood', 'default:wood', 'default:wood'},
                 {"", 'dye:grey', ""}
	}
})

-- http://steinheim.vraiforum.com/index.php