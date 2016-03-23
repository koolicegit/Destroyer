-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com


-- beginning code

class("Monster")
local fullHealth = 500;
function Monster:Monster(name, health)     
  self.name = name;
  self.health = health;  
  self.amount = 0
end

function Monster:hit(event)
  self.health = self.health - self.amount
  print(self.health)
  if (self.health < 0 or self.health == 0) then
    self.health = 0;
	local obj = event.target;
	display.remove( obj )
	transition.cancel ( event.target.trans )
	print("you are dead")
  end

end

function Monster:energy()
  self.energy = self.energy - self.amount
  if (self.energy < 0) then
    self.energy = 0
  end
end

function Monster:recharge(amount)
  -- code for energy recharge
end

return Monster