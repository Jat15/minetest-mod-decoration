-- _________________________________________________

-- Code & Graphismes Libre [Jat & Ze.]
-- -= Lua Minetest Steinheim =-  
--  (textures a retoucher)

-- Tableaux_Mod 

-- _________________________________________________



--TABLEAUX
--[[

Configuration par défaut :

tableau({
	name = "Nom du node",
	description = "Description" ,
	tiles = {
		'top',
		'bottom',
		'left',
		'right',
		'front',
		'back',
	},
	size = {x= 1, y= 1}, -- taille du tableau
	border = true
})

Nom des partie des grand tableau:

	nomdunode"x"x"y"

	exemple tableaux:Supertableau1x2

Pour les image front :
	
	nomimage"x"x"y".png



--]]

--
--Fonction pour la création des tableaux
--
tableauxtableau={}

function tableau(tableau)
	if tableau.name == nil then
		return
	end

	local default= {
		description = "",
		tiles = {
			'unknown_node.png',
			'unknown_node.png',
			'unknown_node.png',
			'unknown_node.png',
			'unknown_node.png',
			'unknown_node.png',
		},
		size = {x = 1, y = 1},
		border = true
	}
	
	local nodename = tableau.name
	local description = tableau.descriptions or default.description
	local images = tableau.tiles or default.tiles 
	local taille = tableau.size or default.size
	local border = tableau.border
	if border == nil then 
		border = default.border
	end
	local tampon = images[6]
	table.insert(tableauxtableau, nodename)
	for y=1, taille.y do
		for	x=1, taille.x do
			local  nodebox = {}
			
			if border then
				if y == 1 then
					table.insert(nodebox,{-0.5,0.375,0.375,0.5,0.5,0.5}) --haut
				end
				if x == 1 then
					table.insert(nodebox,{-0.5,-0.5,0.375,-0.375,0.5,0.5}) --Gauche
				end
				if y == taille.y then
					table.insert(nodebox,{-0.5,-0.5,0.375,0.5,-0.375,0.5}) --Bas
				end
				if x == taille.x then
					table.insert(nodebox,{0.375,-0.5,0.375,0.5,0.5,0.5}) --Droite
				end
			end
			table.insert(nodebox,{-0.5,-0.5,0.422646,0.5,0.5,0.5}) --Fond
			tilespart = images
			if taille.x==1 and taille.y==1 then
				nodenamepart = nodename
				selectionbox={ -0.5, -0.5, 0.5, 0.5, 0.5, 0.375 }
				drop = "tableaux:tableau"
			else
				selectionbox= nil
				nodenamepart = nodename..x.."x"..y
				tilespart[6] = string.gsub(tampon, ".png", "")..x.."x"..y..".png"
				drop = ""
				description = ""

				place = function(pos)
					
				end
				destruct = function()
				end
				if x==1 and y==1 then
					selectionbox = { -0.5, -0.5, 0.5, 0.5+taille.x-1, 0.5+taille.y-1, 0.375 }
					drop = "tableaux:tableau"
					minetest.register_alias(nodename,nodename.."1".."x".."1")
					description = description
					local listfacedir = {{x=1,z=0},{x=0,z=-1},{x=-1,z=0},{x=0,z=1}}
					
					place = function(pos)
						local param2 = minetest.get_node(pos).param2
						local air = true
						for ay=1, taille.y do
							for	ax=1, taille.x do
								if minetest.get_node({x = pos.x+(ax-1)*listfacedir[param2+1].x, z = pos.z+(ax-1)*listfacedir[param2+1].z, y = pos.y+ay-1}).name~="air" and minetest.get_node({x = pos.x+(ax-1)*listfacedir[param2+1].x, z = pos.z+(ax-1)*listfacedir[param2+1].z, y = pos.y+ay-1}).name~=nodename.."1x1" then
									minetest.add_node(
										pos,
										{
											name="tableaux:tableau",
											param2=param2
										}
									)
									air = false
									break
								end
							end
						end
						
						if air then
							for ay=1, taille.y do
								for	ax=1, taille.x do
									if nodename..ax.."x"..ay~=nodename.."1x1" then
										minetest.add_node(
											{
												x = pos.x+(ax-1)*listfacedir[param2+1].x,
												z = pos.z+(ax-1)*listfacedir[param2+1].z,
												y = pos.y+ay-1
											},
											{
												name=nodename..ax.."x"..ay,
												param2=param2
											}
										)
									end
								end
							end
						end
					end
					destruct = function(pos, oldnode, oldmetadata, digger)
						local param2 = oldnode.param2
						for ay=1, taille.y do
							for	ax=1, taille.x do
								minetest.remove_node(
									{
										x = pos.x+(ax-1)*listfacedir[param2+1].x,
										z = pos.z+(ax-1)*listfacedir[param2+1].z,
										y = pos.y+ay-1
									}
								)
							end
						end
					end
					--]]
				end
			end
			
			minetest.register_node(nodenamepart, {
				description = description,
				paramtype = 'light',
				paramtype2 = 'facedir',
				is_ground_content = true,
				drawtype = 'nodebox',
				tiles = tilespart,
				drop = drop,
				selection_box = {
					type = 'fixed',
					fixed = selectionbox,
				},

				node_box = {
					type = 'fixed',
					fixed = nodebox,
				},
				groups = {dig_immediate=2},
				on_construct = place,
				after_dig_node = destruct
			})

		end
	end	
	
end


minetest.register_node("tableaux:tableau", {
	description = "Tableau",
	paramtype = 'light',
	paramtype2 = 'facedir',
	is_ground_content = true,
	drawtype = 'nodebox',
	tiles =	{
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableau_test.png',
	},
	selection_box = {
		type = 'fixed',
		fixed = { -0.5, -0.5, 0.5, 0.5, 0.5, 0.375 }
	},
	node_box = {
		type = 'fixed',
	fixed = {
		{-0.5,-0.5,0.375,0.5,-0.375,0.5}, --Bas
		{-0.5,0.375,0.375,0.5,0.5,0.5}, --haut
		{0.375,-0.375,0.375,0.5,0.375,0.5}, --Droite
		{-0.5,-0.375,0.375,-0.375,0.375,0.5}, --Gauche
		{-0.375,-0.375,0.422646,0.375,0.375,0.5}, --Fond
	},
		},
	groups = {dig_immediate=2},
	after_place_node = function(pos)
		local param2 = minetest.get_node(pos).param2
		minetest.add_node(pos, {name=tableauxtableau[math.random(1,table.getn(tableauxtableau))], param2 = param2})
	end,
})
---
---Déclaration dess tableau
---

--tableau( nom du node, description, les images)


tableau({
	name = 'tableaux:TableauMosa',
	description = 'TableauMosa decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauMoz_textureback.png',
	}
})

tableau({
	name = 'tableaux:tableausachou',
	description = 'tableauSachou decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauPhoto_textureback.png',
	}
})

tableau({
	name = 'tableaux:TableauPaysage1',
	description = 'TableauPaysage1 decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauPaysage1_textureback.png',
	}
})

tableau({
	name = 'tableaux:TableauPaysage2',
	description = 'TableauPaysage2 decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauPaysage2_textureback.png',
	}
})

tableau({
	name = 'tableaux:tableauJedi',
	description = 'tableauJedi decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauJedi_textureback.png',
	}
})

tableau({
	name = 'tableaux:tableauHassage',
	description = 'tableauHassage decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauHassage_textureback.png',
	}
})

tableau({
	name = 'tableaux:TableauZe',
	description = 'TableauZe decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauZe_textureback.png',
	}
})

tableau({
	name = 'tableaux:TableauIllOpt',
	description = 'TableauIllOpt decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'tableauIllOpt_textureback.png',
	}
})

tableau({
	name = 'tableaux:TableauLogo',
	description = 'TableauLogo decoration',
	tiles = {
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_bord.png',
		'tableau_fond.png',
		'logo.png',
	},
      size = {x= 2, y= 1},
      border = false
})

tableau({
	name = 'tableaux:mapmonde',
	description = 'Mapmonde',
	tiles = {
		'mapmonde_bord.png',
		'mapmonde_bord.png',
		'mapmonde_bord.png',
		'mapmonde_bord.png',
		'tableau_fond.png',
		'mapmonde.png',
	},
	size = {x= 2, y= 1},
	border = false
})

--
-- Craft
--

minetest.register_craft({
	output = "tableaux:tableau",
	recipe = {
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "wool:white", "group:stick"},
		{"group:stick", "group:stick", "group:stick"}
	}
})


-- http://steinheim.vraiforum.com/index.php
