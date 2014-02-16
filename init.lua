-- GENERATED CODE
-- Node Box Editor, version 0.6.2 - Stone
-- Namespace: test

minetest.register_node("random:wood",{
	descrption = "chest",
	groups = {oddly_breakable_by_hand=2, choppy=1},
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
	drawtype="nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375,-0.5,-0.4375,0.440288,0.375,0.423275}, --NodeBox1
	},
	legacy_facedir_simple = true,
	is_ground_content = false,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",default.chest_formspec)
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
	}
})

minetest.register_node("random:fence_post",{
	description = "fence post",
	drawtype="nodebox",
	groups = {oddly_breakable_by_hand=1},
	tiles = {"default_wood.png"},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125,-0.5,-0.125,0.125,0.5,0.125}, --fence_post
		}
	}
})
