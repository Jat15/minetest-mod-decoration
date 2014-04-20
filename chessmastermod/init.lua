-- ChessMaster_Mod Code Libre Ze.-=Lua Minetest Steinheim=-

--
-- Register Node
--

-- Plateau

minetest.register_node("chessmastermod:bordEchec",{
  description = 'Echec Plateau ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'bord.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})

minetest.register_node("chessmastermod:plateauNoir",{
  description = 'Echec Plateau ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'plateaunoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})

minetest.register_node("chessmastermod:plateauBlanc",{
  description = 'Echec Plateau ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'plateaublanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})


-- Pieces

minetest.register_node("chessmastermod:pionNoir",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Pion Noir "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsnoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875,-0.5,-0.1875,0.1875,-0.375,0.1875}, 
			{-0.125,-0.375,-0.125,0.125,-0.3125,0.125}, 
		     {-0.0625,-0.3125,-0.0625,0.0625,-0.125,0.0625}, 
			{-0.125,-0.125,-0.125,0.125,0.125,0.125},
		}
	}
})


minetest.register_node("chessmastermod:pionBlanc",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Pion Blanc "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsblanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875,-0.5,-0.1875,0.1875,-0.375,0.1875}, 
			{-0.125,-0.375,-0.125,0.125,-0.3125,0.125}, 
		     {-0.0625,-0.3125,-0.0625,0.0625,-0.125,0.0625}, 
			{-0.125,-0.125,-0.125,0.125,0.125,0.125},
		}
	}
})

minetest.register_node("chessmastermod:tourBlanc",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Tour Blanc "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsblanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.375,-0.25,0.25,-0.3125,0.25}, 
		    {-0.1875,-0.3125,-0.1875,0.1875,-0.0625,0.1875}, 
			{-0.25,-0.0625,-0.25,0.25,0.1875,0.25}, 
			{0.0625,0.1875,-0.25,0.25,0.3125,-0.0625}, 
			{-0.25,0.1875,0.0625,-0.0625,0.3125,0.25}, 
			{-0.25,0.1875,-0.25,-0.125,0.3125,-0.0625}, 
			{0.0625,0.1875,0.0625,0.25,0.3125,0.25}, 
		}
	}
})

minetest.register_node("chessmastermod:tourNoir",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Tour Noir "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsnoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.375,-0.25,0.25,-0.3125,0.25}, 
		    {-0.1875,-0.3125,-0.1875,0.1875,-0.0625,0.1875}, 
			{-0.25,-0.0625,-0.25,0.25,0.1875,0.25}, 
			{0.0625,0.1875,-0.25,0.25,0.3125,-0.0625}, 
			{-0.25,0.1875,0.0625,-0.0625,0.3125,0.25}, 
			{-0.25,0.1875,-0.25,-0.125,0.3125,-0.0625}, 
			{0.0625,0.1875,0.0625,0.25,0.3125,0.25}, 
		}
	}
})

minetest.register_node("chessmastermod:fouNoir",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Fou Noir "..
				meta:get_string("owner")..")")
	end,


  drawtype = 'nodebox',
  tiles = {
   'pionsnoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.375,-0.25,0.25,-0.3125,0.25}, 
			{-0.125,-0.3125,-0.125,0.125,0,0.125}, 
			{-0.1875,0,-0.1875,0.1875,0.25,0.1875}, 
			{-0.125,0.25,-0.125,0.125,0.375,0.125}, 
			{-0.0625,0.375,-0.0625,0.0625,0.5,0.0625}, 
		}
	}
})

minetest.register_node("chessmastermod:fouBlanc",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Fou Blanc "..
				meta:get_string("owner")..")")
	end,
  drawtype = 'nodebox',
  tiles = {
   'pionsblanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.375,-0.25,0.25,-0.3125,0.25}, 
			{-0.125,-0.3125,-0.125,0.125,0,0.125}, 
			{-0.1875,0,-0.1875,0.1875,0.25,0.1875}, 
			{-0.125,0.25,-0.125,0.125,0.375,0.125}, 
			{-0.0625,0.375,-0.0625,0.0625,0.5,0.0625}, 
		}
	}
})

minetest.register_node("chessmastermod:cavalierBlanc",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Cavalier Blanc "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsblanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.375,-0.25,0.25,-0.3125,0.25}, 
			{-0.125,-0.3125,-0.1875,0.125,0,0.1875}, 
			{-0.0625,0,-0.25,0.0625,0.25,0.25}, 
			{-0.0625,0.25,-0.1875,0.0625,0.3125,0.1875}, 
			{-0.0625,-0.125,0.25,0.0625,0.1875,0.375}, 
			{-0.0625,0,-0.375,0.0625,0.1875,-0.25}, 
			{-0.0625,0,-0.5,0.0625,0.125,-0.375}, 
			{-0.0625,0.3125,-0.0625,0.0625,0.375,0.1875}, 
		}
	}
})

minetest.register_node("chessmastermod:cavalierNoir",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Cavalier Noir "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsnoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.375,-0.25,0.25,-0.3125,0.25}, 
			{-0.125,-0.3125,-0.1875,0.125,0,0.1875}, 
			{-0.0625,0,-0.25,0.0625,0.25,0.25}, 
			{-0.0625,0.25,-0.1875,0.0625,0.3125,0.1875}, 
			{-0.0625,-0.125,0.25,0.0625,0.1875,0.375}, 
			{-0.0625,0,-0.375,0.0625,0.1875,-0.25}, 
			{-0.0625,0,-0.5,0.0625,0.125,-0.375}, 
			{-0.0625,0.3125,-0.0625,0.0625,0.375,0.1875}, 
		}
	}
})

minetest.register_node("chessmastermod:dameNoir",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Dame Noir "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsnoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.5,-0.25,0.25,-0.3125,0.25}, 
		    {-0.1875,-0.3125,-0.1875,0.1875,-0.1875,0.1875}, 
			{-0.125,-0.1875,-0.125,0.125,0.125,0.125}, 
			{-0.25,0.125,-0.25,0.25,0.375,0.25}, 
			{0.125,0.375,-0.25,0.25,0.4125,-0.125}, 
			{0.125,0.375,0.125,0.25,0.4125,0.25}, 
			{-0.25,0.375,-0.25,-0.125,0.4125,-0.125}, 
			{-0.25,0.375,0.125,-0.125,0.4125,0.25}, 
			{-0.25,-0.0625,-0.25,0.25,0,0.25}, 
			{-0.125,0.375,-0.125,0.125,0.4375,0.125}, 
			{-0.0625,0.425,-0.0625,0.0625,0.5,0.0625}, 
		}
	}
})


minetest.register_node("chessmastermod:dameBlanc",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Dame Blanc "..
				meta:get_string("owner")..")")
	end,
  drawtype = 'nodebox',
  tiles = {
   'pionsblanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125}, 
			{-0.25,-0.5,-0.25,0.25,-0.3125,0.25}, 
		    {-0.1875,-0.3125,-0.1875,0.1875,-0.1875,0.1875}, 
			{-0.125,-0.1875,-0.125,0.125,0.125,0.125}, 
			{-0.25,0.125,-0.25,0.25,0.375,0.25}, 
			{0.125,0.375,-0.25,0.25,0.4125,-0.125}, 
			{0.125,0.375,0.125,0.25,0.4125,0.25}, 
			{-0.25,0.375,-0.25,-0.125,0.4125,-0.125}, 
			{-0.25,0.375,0.125,-0.125,0.4125,0.25}, 
			{-0.25,-0.0625,-0.25,0.25,0,0.25}, 
			{-0.125,0.375,-0.125,0.125,0.4375,0.125}, 
			{-0.0625,0.425,-0.0625,0.0625,0.5,0.0625}, 
		}
	}
})

minetest.register_node("chessmastermod:roiBlanc",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Roi Blanc "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsblanc.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.375,-0.5,-0.375,0.375,-0.375,0.375}, 
			{-0.3125,-0.5,-0.3125,0.3125,-0.3125,0.3125}, 
			{-0.25,-0.3125,-0.25,0.25,-0.1875,0.25}, 
			{-0.1875,-0.1875,-0.1875,0.1875,0.125,0.1875}, 
			{-0.3125,0.125,-0.3125,0.3125,0.375,0.3125}, 
			{0.125,0.375,-0.25,0.25,0.5,-0.125}, 
			{0.125,0.375,0.125,0.25,0.5,0.25}, 
			{-0.25,0.375,-0.25,-0.125,0.5,-0.125}, 
			{-0.25,0.375,0.125,-0.125,0.5,0.25}, 
			{-0.25,0,-0.25,0.25,0.125,0.25}, 
			{-0.25,0.45,-0.25,0.25,0.5,0.25},
			{-0.0625,0.425,-0.0625,0.0625,0.5,0.0625}, 			{-0.3125,-0.125,-0.3125,0.3125,-0.0625,0.3125}, 
		}
	}
})

minetest.register_node("chessmastermod:roiNoir",{
  description = 'Echec Piece ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "(Roi Noir "..
				meta:get_string("owner")..")")
	end,

  drawtype = 'nodebox',
  tiles = {
   'pionsnoir.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.375,-0.5,-0.375,0.375,-0.375,0.375}, 
			{-0.3125,-0.5,-0.3125,0.3125,-0.3125,0.3125}, 
			{-0.25,-0.3125,-0.25,0.25,-0.1875,0.25}, 
			{-0.1875,-0.1875,-0.1875,0.1875,0.125,0.1875}, 
			{-0.3125,0.125,-0.3125,0.3125,0.375,0.3125}, 
			{0.125,0.375,-0.25,0.25,0.5,-0.125}, 
			{0.125,0.375,0.125,0.25,0.5,0.25}, 
			{-0.25,0.375,-0.25,-0.125,0.5,-0.125}, 
			{-0.25,0.375,0.125,-0.125,0.5,0.25}, 
			{-0.25,0,-0.25,0.25,0.125,0.25}, 
			{-0.25,0.45,-0.25,0.25,0.5,0.25},
			{-0.0625,0.425,-0.0625,0.0625,0.5,0.0625}, 			{-0.3125,-0.125,-0.3125,0.3125,-0.0625,0.3125}, 
		}
	}
})



--
-- Register Crafts
--

minetest.register_craft({
	output = 'chessmastermod:bordEchec',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'chessmastermod:plateauNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'chessmastermod:plateauBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})


minetest.register_craft({
	output = 'chessmastermod:pionNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'chessmastermod:pionBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:tourBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:tourNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:fouNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'chessmastermod:fouBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:cavalierBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:cavalierNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:dameNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:dameBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:roiBlanc',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'chessmastermod:roiNoir',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

-- http://steinheim.vraiforum.com/index.php
