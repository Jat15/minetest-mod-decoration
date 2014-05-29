-- Mod_Icube Code Libre Ze.
-- -= Lua Minetest Steinheim =-


minetest.register_node("icubemod:telIcube",{
  description = 'telephone Icube',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
    'face.png',
    'tel2.png',
    'tel2.png',
    'tel2.png',
    'tel2.png',
    'tel2.png',
  },


selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.125,-0.5,-0.3125,0.125,-0.4375,0.125}, 
		}
	}
})

minetest.register_craft({
	output = 'icubemod:telIcube',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})
