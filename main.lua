-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com


-- beginning code
display.setStatusBar(display.HiddenStatusBar)

local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- set up forward references

-- preload audio

-- create play screen
local background = display.newImage("background.png")
background.y = 140
background.alpha = 0

local hero = display.newImage("hero.png")
hero.x = display.contentWidth + 60
hero.y = centerY
hero.alpha = 0
transition.to( hero, { time=2500, alpha=1, x=centerX,} )
transition.to( background, { time=2500, alpha=1, y=centerY, x=centerX} )

-- game functions
local function spawnEnemy()

end


local function startGame()
	
end


local function heroDamage()

end


local function hitHero(obj)

end


local function smashEnemy(event)

end

startGame()