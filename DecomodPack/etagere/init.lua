-- Mod_Etagere Code Libre Ze. 
-- -= Lua Minetest Steinheim =-

minetest.register_node("etagere:eta",{
  description = 'Etagere Decoration',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
   'junglewood.png',
  },

selection_box = {
    type = 'fixed',
    fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,0.4125,-0.125,0.5,0.5,0.5}, 
			{0.375,0.125,0.375,0.5,0.5,0.5}, 
			{-0.5,0.125,0.375,-0.375,0.5,0.5}, 
			{0.375,0.3125,0.25,0.5,0.4125,0.5}, 
			{-0.5,0.3125,0.25,-0.375,0.425,0.5}, 
		}
	}
})

minetest.register_craft({
	output = 'etagere:eta',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

-- http://steinheim.vraiforum.com/index.php
