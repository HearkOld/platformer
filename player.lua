player = {}

function player.load()
  player.x = 5
  player.y = 5
  player.xvel = 0
  player.yvel = 0
  player.friction = 7
  player.speed = 2250
  player.width = 50
  player.height = 50
end
function player.draw()
  love.graphics.setColor(100, 0, 0)
  love.graphics.rectangle("fill",player.x,player.y,player.width,player.height)
  love.graphics.setColor(100, 0, 0)
  love.graphics.rectangle("line",player.x,player.y,player.width,player.height)
end
