minetest.register_chatcommand("reset",
{
params="",
--description="重置玩家",
func=function(name,param)
local player=minetest.get_player_by_name(name)
player:set_properties({eye_height=1.4})
player:set_physics_override({jump=1.4,speed=1})
end,
}
)