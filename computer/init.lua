-- COMPUTER Mod - Code Libre Ze.-=Lua Minetest Steinheim=-


local function has_pcsteinheim_privilege(meta, player)
return player:get_player_name() == meta:get_string("owner") or player:get_player_name() == minetest.setting_get("name")
end


--REGISTER NODE

minetest.register_node('computer:pcsteinheim', {
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

    	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "pcsteinheim")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_pcsteinheim_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_pcsteinheim_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" verrouille appartenant a "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_pcsteinheim_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" verrouille appartenant a "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_pcsteinheim_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" verrouille appartenant a "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
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
	output = 'computer:pcsteinheim',
	recipe = {
		{'default:stone', 'default:stone', 'default:stone'},
     {'default:gravel', 'default:gravel', 'default:gravel'},
                 {"default:steelblock", "default:steelblock", "default:steelblock"}
	}
})


-- http://steinheim.vraiforum.com/index.php
