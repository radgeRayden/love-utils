--[[
Copyright (c) 2015, Westerbly (radgeRayden) Snaydley
This is licensed under the MIT license (http://opensource.org/licenses/MIT).
Time of creation: September 9th, 2015 20:59 ACT
Description:
Simple overlay for displaying debug information (only fps as of this version).
Version: 1.0.1 (October 30th, 2015)
--]]

overlay = {}

local fps = 60
local timer = 0

function overlay.draw()
  love.graphics.print('FPS: ' .. fps, 25, 25)
end

function overlay.update(dt)
  timer = timer + dt
  if timer > 1 then
    fps = 1 / dt - (1 / dt % 1)
    timer = timer % 1
  end
end

return overlay
