local mod_n= minetest.get_current_modname()
print(mod_n)
local mod_p=minetest.get_modpath(mod_n)
dofile(mod_p.."/cmd.lua")
minetest.register_craftitem("b:big160",
{
description="big160",
inventory_image = "big.png",
on_use=function(itemstack, user, pointed_thing)
minetest.chat_send_all(tostring(user))
    local i 
    i=user:get_properties()
    if i.mesh=="creeper.obj" then
    user:set_properties({visual_size={x=1600,y=1600},eye_height=160,})
    else
    user:set_properties({visual_size={x=10,y=10},eye_height=10,})
    end
user:set_physics_override({jump=8,speed=8})
minetest.chat_send_all(tostring(i))
minetest.chat_send_all(tostring(type(user)))
minetest.chat_send_all(tostring(user.visual_size))
minetest.chat_send_all(tostring(user[1]))
end,
}
)
minetest.register_craftitem("b:reset",
{
description="reset",
inventory_image = "reset.png",
on_use=function(itemstack, user, pointed_thing)
user:set_properties({eye_height=8})
end,
}
)
minetest.register_craftitem("b:big",
{
description="big",
inventory_image = "big.png",
on_use=function(itemstack, user, pointed_thing)
minetest.chat_send_all(tostring(user))
    local i 
    i=user:get_properties()
    if i.mesh=="creeper.obj" then
    user:set_properties({visual_size={x=80,y=80},eye_height=8,})
    else
    user:set_properties({visual_size={x=10,y=10},eye_height=10,})
    end
user:set_physics_override({jump=8,speed=8})
minetest.chat_send_all(tostring(i))
minetest.chat_send_all(tostring(type(user)))
minetest.chat_send_all(tostring(user.visual_size))
minetest.chat_send_all(tostring(user[1]))
end,
}
)

minetest.register_craftitem("b:small",
{
description="small",
inventory_image = "small.png",
on_use=function(itemstack, user, pointed_thing)
    minetest.chat_send_all(tostring(user))
    local i =1  
    user:set_physics_override({jump=1})
    i=user:get_properties() 
    print(i.mesh)
    if i.mesh=="creeper.obj" then
    user:set_properties({visual_size={x=10,y=10},eye_height=1.4,})
    else
    user:set_properties({visual_size={x=1,y=1},eye_height=1.4,})
    end
user:set_physics_override({jump=2,speed=1})
minetest.chat_send_all(tostring(i))
minetest.chat_send_all(tostring(type(user)))
minetest.chat_send_all(tostring(user.visual_size))
minetest.chat_send_all(tostring(user[1]))
end,
}
)