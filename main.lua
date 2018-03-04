-- Title: DrawingShapesInLua
-- Name : Tristan Royer
-- Course:Ics2O/3C
-- This program displays different Polygons in Lua 


-- Set the colour of the background
 display.setDefault("background", 0/255, 200/255, 150/255)

 -- Remove the status Bar
 display.setStatusBar(display.HiddenStatusBar)

 -- Create my local variables
 local myCircle
 local myRectangle
 local myRectangle2
 local myRectangleWidth = 100
 local myRectangleHeight = 100
 local myRectangle2Width = 100
 local myRectangleHeight = 100
 local myTriangle 
 local myQuadrilateral 
 local myHeptagon
 local myHexagon
 local textSizeTriangle = 30
 local textTriangle
 local textQuadrilateral
 local textSizeQuadrilateral = 30
 local textHexagon
 local textSizehexagon = 30
 local textHeptagon
 local textSizeHeptagon = 30

 -- set the x and y positons of the vertices of the shapes
 local verticesTriangle = {0,50, 60,-50, 120,50}
 local verticesQuadrilateral = {130,50, 200,-65, 200,75, 170,80}
 local verticesHexagon = {}
 local verticesHeptagon = {}

--sets the base to be half of the width and the height
local halfW = display.contentWidth * 0.5
local halfH = display.contentHeight * 0.5
 
--Displays the Triangle
local myTriangle =  display.newPolygon( 50, halfW, verticesTriangle )

--Displays the Quadrilateral
local myQuadrilateral = display.newPolygon(160, halfW,verticesQuadrilateral)

--Displays the hexagon
local myHexagon = display.newPolygon(0,halfW,verticesHexagon)

--Displays the Heptagon
local myHeptagon = display.newPolygon(0,halfW,verticesHeptagon)

--sets the stroke width
 myTriangle.strokeWidth = 5
 myQuadrilateral.strokeWidth = 3
 myHexagon.strokeWidth = 3
 myHeptagon.strokeWidth = 3

--sets the stroke colour
 myTriangle:setStrokeColor( 1, 0, 0 )
 myQuadrilateral:setStrokeColor(0, 0, 0)
 myHexagon:setStrokeColor(0, 0, 0)
 myPentagon:setStrokeColor(0, 0, 0)

--sets the fill colour of the shapes
myTriangle:setFillColor(1, 0, 1)
myQuadrilateral:setFillColor(1, 1, 0)
myHexagon:setFillColor(0, 1, 0)
myHeptagon:setFillColor(0, 1, 1)

-- Displays the Triangle's Text
textTriangle = display.newText("Triangle",55,315, Arial, textSizeTriangle)
textTriangle:setFillColor(0,0,0)

-- Displays the Quadrilateral's text
textQuadrilateral = display.newText("Quadrilateral",140,315, Arial, textSizeQuadrilateral)
textQuadrilateral:setFillColor(0,0,0)

--displays the Hexagon's text
textHexagon = display.newText("Hexagon",0,0 Arial, textSizehexagon)
textHexagon:setFillColor(0,0,0)

--Displats the Heptagon's text
textHeptagon = display.newText("Heptagon",0,0 Arial, textSizeheptagon)
textHeptagon:setFillColor(0,0,0)