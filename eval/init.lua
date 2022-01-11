minetest.register_chatcommand("eval", {
  func = function(player, param)
      f = loadstring(param)
      f()
      return true
  end
})