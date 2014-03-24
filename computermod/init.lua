-- COMPUTER Mod - Code Libre Ze.-=Lua Minetest Steinheim=-

-REGISTER NODE

minetest.register_node('computermod:pcsteinheim', {
  description = 'PC Steinheim OS',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "PC (appartient a "..
				meta:get_string("owner")..")")
	end,
  drawtype = 'nodebox',
  tiles = {
    'computer_texturetop.png',
    'computer_texturebottom.png',
    'computer_textureleft.png',
    'computer_textureright.png',
    'computer_texturefront.png',
    'computer_textureback.png',
  },
  selection_box = {
    type = 'fixed',
    fixed = { -1/3, -1/3, -1/3, 1/3, 1/3, 1/3 }
  },
  node_box = {
    type = 'fixed',
    fixed = {
			{-0.5,-0.5,-0.0625,-0.1875,0.0625,0.5}, 
			{-0.375,-0.5,-0.3125,-0.25,-0.4375,-0.1875}, 
			{-0.125,-0.5,-0.3125,0.5,-0.4375,0}, 
			{0.0625,-0.5,0.25,0.375,-0.4375,0.3125}, 
			{-0.0625,-0.4375,0.1875,0.5,0,0.25}, 
		}
	}
})

-- REGISTER CRAFT

minetest.register_craft({
	output = 'computermod:pcsteinheim',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
     {'default:gravel', 'default:gravel', 'default:gravel'},
                 {"default:steelblock", "default:steelblock", "default:steelblock"}
	}
})


-- http://steinheim.vraiforum.com/index.php
