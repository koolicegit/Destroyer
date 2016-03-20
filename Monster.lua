-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com


-- beginning code
local Monster = class()
Monster.__name = "Monster"
local Monster = class()
local fullHealth = 500


function Monster:__init(name, health, damage)
  self.name = name
  self.health = health
  self.damage = damage
  fullHealth = health
end

function Monster:hit(amount)
  self.health = self.health - amount
  if (self.health < 0 ) then
    self.health = 0
  end
end


function Monster:energy(amount)
  self.energy = self.energy - amount
  if (self.energy < 0) then
    self.energy = 0
  end
end

function Monster:recharge()
-- future code for energy recharge rate
end

function Monster:attack( character )
  if monster:is(Monster) then
    character:hit(self.damage)
  end

end

return Monster