--
-- BureauMod Code - Code Libre Ze.-= Lua Minetest Steinheim =-
-- 

-- Bureau 

minetest.register_node('bureaumod:bureau', {
  description = 'Bureau Decoration ',
  paramtype = 'light',
  paramtype2 = 'facedir',
  is_ground_content = true,
  groups = {cracky=3},
  drawtype = 'nodebox',
  tiles = {
    'bureauA_texturetop.png',
    'bureauA_texturebottom.png',
    'bureauA_textureleft.png',
    'bureauA_textureright.png',
    'bureauA_texturefront.png',
    'bureauA_textureback.png',
  },
  selection_box = {
    type = 'fixed',
    fixed = { -1/1, -1/2, -1/2, 2/2, 1/2, 1/1 }
  },
  node_box = {
    type = 'fixed',
    fixed = {
			{-1.0625,0.425,-0.375,1.0625,0.5,0.625006}, 
			{-1.0625,-0.5,0.375,-0.95,0.5,0.5}, 
			{-1.0625,-0.5,-0.25,-0.9625,0.5,-0.125}, 
			{0.9625,-0.5,0.375,1.075,0.5,0.5}, 
			{0.975,-0.5,-0.25,1.0625,0.5,-0.125}, 
			{-0.95,0,-0.1875,0.9625,0.0625,0.4375}, 
			{-0.9625,0.0625,0.3125,0.9625,0.4375,0.5}, 
			{-0.975,0.0625,-0.1875,-0.9125,0.5,0.5}, 
			{0.9,0.0625,-0.1875,0.975,0.425,0.5}, 
			{-0.0625,0.0625,-0.1875,0.0625,0.4375,0.5}, 
			{-0.9125,0.0625,-0.3125,-0.0625,0.4125,0.5}, 
		}
	}
})


-- REGISTER CRAFT

minetest.register_craft({
	output = 'bureaumod:bureau',
	recipe = {
		{'default:wood', '', 'default:wood'},
     {'default:wood', 'default:stone', 'default:wood'},
                {'', 'default:wood', ''}
	}
})

-- http://steinheim.vraiforum.com/index.php
