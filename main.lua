-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com
require( "class" )
-- beginning code
local Character = require("Character")
local Monster = require("Monster")
display.setStatusBar(display.HiddenStatusBar)
local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- set up forward references
-- preload audio

-- create play screen
local background = display.newImage("background.png")
local touch = display.newImage("background.png")
local touch2 = display.newImage("background.png")
touch.x = display.contentWidth/2
--touch.isVisable = false;

background.y = 140
background.alpha = 0

local hero = display.newImage("warriorgirl.png")

local test = Monster("bill", 200)

hero.x = display.contentWidth + 60
hero.y = centerY
hero.alpha = 0
hero.xScale = 0.1
hero.yScale = 0.1
transition.to( hero, { time=3500, alpha=1, xScale=.1, yScale=.1, x=centerX,} )
transition.to( background, { time=3500, alpha=1, y=centerY, x=centerX} )

function switch()
  hero.xScale = hero.xScale * -1
end

function startGame(event)
  spawn(50)
 end
 hero:addEventListener ( "tap", startGame )
 touch:addEventListener("tap", switch)
local speedBump = 0

function hit(event)
  test:hit(event)
end

 --*******************************************************************
 -- This is the spawn function. It will randomally spawn a monster
 -- and it will come from either side of the screen and work it way
 -- to the center
 --******************************************************************
local speedBump = 0
local damage = 200

function spawn(amount)
  local amount = amount
  local monsters = {"poke1.png", "poke2.png", "poke3.png"};
  local monsterspawn = display.newImage(monsters[math.random (3)]);
  monsterspawn.xScale =.50;
  monsterspawn.yScale =.50;
  monsterspawn:addEventListener ( "tap", hit )

  if math.random(2) == 1 then
		monsterspawn.x = math.random ( -100, -10 ) - 200;
	else
		monsterspawn.x = math.random ( display.contentWidth + 10, display.contentWidth + 100 ) + 200;
		monsterspawn.xScale = -1;
	end;


  monsterspawn.y = display.contentHeight/2;
  monsterspawn.trans = transition.to ( monsterspawn, { x=centerX, y=centerY, time=math.random(2500-speedBump, 4500-speedBump), onComplete=die });
	speedBump = speedBump + 50;
end

function die(obj)
	display.remove( obj )
end