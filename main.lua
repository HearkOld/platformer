--
-- Simple Platformer Game (C)opyright Heark 2014
--

-- Require Files
require "player"

-- Main

function love.load()
love.graphics.getBackgroundColor(255, 255, 255)
-- Loading Classes
player.load()
end
function love.update(dt)
  UPDATE_PLAYER(dt)
end
function love.draw()
  DRAW_PLAYER()
end
