-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com
-- Character Class

-- beginning code
local Character = class()
Character.__name = "Character"
local fullHealth = 1000
local fullEnergy = 100
  
function Character:__init(name, health, damage, energy)
  self.name = name
  self.health = health
  self.damage = damage
  fullHealth = health
  fullEnergy = energy
  self.energy = energy
end

function Character:hit(amount)
  self.health = self.health - amount
  if (self.health < 0 ) then
    self.health = 0
  end
end

function Character:heal(amount)
  self.health = self.health + amount
  if (self.health > fullHealth) then
    self.health = fullHealth
  end
end


function Character:energy(amount)
  self.energy = self.energy - amount
  if (self.energy < 0) then
    self.energy = 0
end

function Character:recharge()
-- future code for energy recharge rate
end

function Character:attack( monster )
  if monster:is(Monster) then
    monster:hit(self.damage)
  end
end

return Character
end