-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com
-- Character Class

-- beginning code
--group that contains character healthbar and energy
characterGroup = display.newGroup()
local Character = class()
Character.__name = "Character"
--set fullHealth and Current Health values, and FullEnergy and current energy values
local fullHealth = 1000
local fullEnergy = 100

--draw objects onscreen

characterGroup = display.newGroup()
characterGroup.x = display.contentCenterX
characterGroup.y = display.contentCenterY
--draw healthbar

-- Green health bar
healthBar = display.newRect(0, -60, fullHealth,10)
healthBar:setFillColor( 000/255, 255/255, 0/255 )
healthBar.strokeWidth = 1
healthBar:setStrokeColor( 255, 255, 255, .5 )
characterGroup:insert(healthBar)

-- Red damage Bar
damageBar = display.newRect(0,
			-60,
                        0, 
                       10)

damageBar:setFillColor( 255/255, 0/255, 0/255 )
characterGroup:insert(damageBar)

function updateDamageBar()
	damageBar.x = currentHealth / 2
	damageBar.width = maxHealth - currentHealth
end

-- lower the character's currentHealth
function damageCharacter(damageTaken)
	currentHealth = currentHealth - damageTaken
	updateDamageBar()
end

  
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
--Character Heals over time
function Character:heal(amount)
  self.health = self.health + amount
  if (self.health > fullHealth) then
    self.health = fullHealth
  end
end

--Characters Energy 
function Character:energy(amount)
  self.energy = self.energy - amount
  if (self.energy < 0) then
    self.energy = 0
  end
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