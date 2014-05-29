-- Mod_DecoBlocs Code Libre Ze.
-- -= Lua Minetest Steinheim =-

minetest.register_node("decoblocs:blocpierre",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'blocstone.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})

minetest.register_node("decoblocs:caisseBois1",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'cbois1.png',
  },

selection_box = {
    type = 'fixed',
    fixed = {-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})

minetest.register_node("decoblocs:caisseBois2",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'cbois2.png',
  },

selection_box = {
    type = 'fixed',
    fixed = {-0.5,-0.5,-0.5,0.5,0.5,0.5},
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})

minetest.register_node("decoblocs:pierretaille",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'pierretaille.png',
  },

selection_box = {
    type = 'fixed',
    fixed = {-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})

minetest.register_node("decoblocs:kubik",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'pierre.png',
  },

selection_box = {
    type = 'fixed',
    fixed = {-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
  },

	node_box = {
           type = 'fixed',
		fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.375,0.5}, 
			{-0.375,-0.375,-0.375,0.375,0.375,0.375}, 
			{-0.5,0.375,-0.5,0.5,0.5,0.5}, 
			{-0.3125,-0.3125,-0.5,0.3125,0.3125,-0.375}, 
			{-0.3125,-0.3125,0.375,0.3125,0.3125,0.5}, 
			{0.3125,-0.3125,-0.3125,0.5,0.3125,0.3125}, 
			{-0.5,-0.3125,-0.3125,-0.375,0.3125,0.3125}, 
		}
	}
})

minetest.register_node("decoblocs:konvex",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'pierre.png',
  },

selection_box = {
    type = 'fixed',
    fixed = {-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
  },

	node_box = {
           type = "fixed",
		fixed = {
			{0.375,-0.5,-0.5,0.5,-0.375,0.5}, 
			{0.375,0.375,-0.5,0.5,0.5,0.5}, 
			{0.375,-0.5,-0.5,0.5,0.375,-0.375}, 
			{0.375,-0.4375,0.375,0.5,0.375,0.5}, 
			{-0.5,-0.4375,0.375,-0.375,0.425,0.5}, 
			{-0.5,-0.4375,-0.5,-0.375,0.4375,-0.375}, 
			{-0.25,-0.25,-0.25,0.25,0.25,0.25}, 
			{-0.5,0.375,-0.5,0.5,0.5,-0.375}, 
			{-0.5,0.375,-0.5,-0.375,0.5,0.5}, 
			{-0.5,0.375,0.375,0.5,0.5,0.5}, 
			{-0.5,-0.5,-0.5,-0.375,-0.375,0.5},
			{-0.5,-0.5,0.375,0.5,-0.375,0.5}, 			           {-0.5,-0.5,-0.5,0.5,-0.375,-0.375}, 
		}
	}
})

minetest.register_node("decoblocs:blocmosa",{
  description = 'Blocs Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'mosa.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,0.5,0.5,0.5}, 
		}
	}
})


minetest.register_craft({
	output = 'decoblocs:blocpierre',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'decoblocs:caissebois2',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'decoblocs:caissebois2',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'decoblocs:pierretaille',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'decoblocs:kubik',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'decoblocs:konvex',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
minetest.register_craft({
	output = 'decoblocs:blocmosa',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

-- http://steinheim.vraiforum.com/index.php
