--
-- Simple Platformer Game (C)opyright Heark 2014
--

-- Require Files
require "system"

-- Main
function love.load()
k = love.keyboard
g = love.graphics
a = love.audio
love.graphics.getBackgroundColor(255, 255, 255)
-- Loading Classes
player.load()
end
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
  bullets ={}
  SHOT_SOUND=a.newSource("shot.mp3")
end
function player.draw()
  love.graphics.setColor(100, 0, 0)
  love.graphics.rectangle("fill",player.x,player.y,player.width,player.height)
  love.graphics.setColor(100, 0, 0)
  love.graphics.rectangle("line",player.x,player.y,player.width,player.height)
end

function UPDATE_PLAYER(dt)
  if k.isDown("left") then player.x=player.x - player.speed*dt end
  if k.isDown("right") then player.x=player.x + player.speed*dt end
  if k.isDown("up") then player.x=player.y - player.speed*dt end
  if k.isDown("down") then player.x=player.y + player.speed*dt end
  local bullets_speed=400
  for i=1,#bullets do
  bullets[i].y=bullets[i].y-bullets_speed*dt
  end
end

function DRAW_PLAYER()
  player.draw()
end

function love.update(dt)
  UPDATE_PLAYER(dt)
end
function love.draw()
  DRAW_PLAYER()
end

