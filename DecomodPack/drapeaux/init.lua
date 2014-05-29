-- Mod_Drapeaux -- Code Libre Ze.-= Lua Minetest Steinheim =-


-- REGISTRER NODE 

-- Pied du drapeau

minetest.register_node("drapeaux:pied_drap",{
  description = 'Pied Drapeau FR ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
    'drapeauxmod_metal.png'
  },
selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{-0.25,-0.5,-0.25,0.25,-0.4375,0.1875}, 
			{0,-0.4375,-0.0625,0.0625,0.5,0}, 
		}
	}
})


-- Embout du Drapeau

minetest.register_node("drapeaux:embout_drap",{
      description = 'Embout Drapeau FR',
	drawtype="nodebox",
	paramtype = "light",
     paramtype2 = 'facedir',
     is_ground_content = true,
     groups = {cracky=3},
     tiles = {
    'drapeauxmod_metal.png'
  },

    selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },


	node_box = {
		type = "fixed",
		fixed = {
			{0,-0.5,-0.0625,0.0625,0.5,0}, 
		}
	}
})



-- Drapeau

minetest.register_node("drapeaux:drapeau_drap",{
      description = 'Drapeau FR',
      paramtype = 'light',
      paramtype2 = 'facedir',
      is_ground_content = true,
      groups = {cracky=3},
      drawtype = 'nodebox',
      tiles = {
    'drapeauxmod_metal.png',
    'drapeauxmod_metal.png',
    'drapeauxmod_metal.png',
    'drapeauxmod_metal.png',
    'drapeauxmod_france.png',
    'drapeauxmod_france.png^[transformFX',
  },
selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },

	node_box = {
		type = "fixed",
		fixed = {
			{0,-0.5,-0.0625,0.0625,0.5,0}, 
			{0,0,-0.0625,0.5,0.5,0}, 
		}
	}
})



--REGISTRER_CRAFT


minetest.register_craft({
	output = 'drapeaux:pied_drap',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})


minetest.register_craft({
	output = 'drapeaux:embout_drap',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

minetest.register_craft({
	output = 'drapeaux:drapeau_drap',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

-- http://steinheim.vraiforum.com/index.php
