-- BUFFER
-- www.NerdyNovelty.com
-- Version: 1.0
-- Copyright 2016 All Rights Reserved
-- "Buffer" art by Megan Clark NerdyNovelty.com
require("modules.30logglobal")
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
background.y = 140
background.alpha = 0

local hero = display.newImage("hero.png")
hero.x = display.contentWidth + 60
hero.y = centerY
hero.alpha = 0
hero.xScale = 0.1
hero.yScale = 0.1
transition.to( hero, { time=3500, alpha=1, xScale=1, yScale=1, x=centerX,} )
transition.to( background, { time=3500, alpha=1, y=centerY, x=centerX} )


startGame()