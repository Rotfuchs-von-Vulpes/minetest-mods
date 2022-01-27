minetest.register_chatcommand("test", {
  func = function(name, param)
    local player = minetest.get_player_by_name(name)
    player:set_physics_override({
      gravity = 1.75,
      jump = 1.625,
      speed = 1.625,
    })
  end,
})

minetest.register_chatcommand("alo", {
  func = function(name, param)
    minetest.chat_send_all(name)
  end,
})

minetest.register_on_joinplayer(function(player)
	player:set_physics_override({
    gravity = 1.5,
    jump = 1.2,
    speed = 1.5,
  })

  local name = player:get_player_name()
  local privs = minetest.get_player_privs(name)

  privs.fly = true
  privs.run = true
  privs.fast = true
  privs.give = true
  privs.bring = true
  privs.sneak = false
  privs.teleport = true
  privs.sneak_glitch = false

  minetest.set_player_privs(name, privs)
end)
