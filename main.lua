-- Title: DrawingShapesInLua
-- Name : Tristan Royer
-- Course:Ics2O/3C
-- This program displays different Polygons in Lua 


-- Set the colour of the background
 display.setDefault("background", 0/255, 200/255, 150/255)

 -- Remove the status Bar
 display.setStatusBar(display.HiddenStatusBar)

 -- Create my local variables
 local myWarningSign
 local textMyWarningSign
 local textMyWarningSignSize = 60
 local textMyWarningSignName
 local textMyWarningSignNameSize = 10
 local areaOfWarningSign
 local myWarningSignBase = 10
 local myWarningSignHeight = 15
 local areaTextWarning
 local areaTextWarningSize = 10
 local areaOfWarningSign = myWarningSignBase * myWarningSignHeight / 2
 local signSide1 = 10
 local signSide2 = 10
 local signSide3 = 10
 local SignPerimeter
 local SignPerimeter = signSide1 + signSide2 + signSide3
 local textPerimeterSign
 local textPerimeterSignSize = 10
 local myTriangle 
 local myQuadrilateral 
 local myHeptagon
 local myOctogon
 local textSizeTriangle = 15
 local textTriangle
 local textQuadrilateral
 local textSizeQuadrilateral = 10
 local textOctogon
 local textSizeOctogon = 10    
 local textHeptagon
 local textSizeHeptagon = 10
 local verticesTriangle = {0,50, 60,-50, 120,50}
 local verticesQuadrilateral = {130,50, 200,-65, 200,75, 170,80}
 local verticesOctogon = {215,50, 250,50, 270,30, 270,10, 250,-10, 215,-10, 200,10, 200,30}
 local verticesHeptagon = {300,50, 285,30, 285,10, 320,-10, 355,10, 355,35, 345,50}
 local verticesMyWarningSign = {0,50, 80,50, 40,-50}
 local halfW = display.contentWidth * 0.5
 local halfH = display.contentHeight * 0.5
 local myTriangle =  display.newPolygon( 50, halfW, verticesTriangle )
 local myQuadrilateral = display.newPolygon(150, halfW,verticesQuadrilateral)
 local myOctogon = display.newPolygon(240,halfW,verticesOctogon)
 local myHeptagon = display.newPolygon(330,halfW,verticesHeptagon)
 local myWarningSign = display.newPolygon(80,100,verticesMyWarningSign)

 
--sets the stroke width
 myTriangle.strokeWidth = 3
 myQuadrilateral.strokeWidth = 3
 myOctogon.strokeWidth = 3
 myHeptagon.strokeWidth = 3
 myWarningSign.stokeWidth = 3
 

--sets the stroke colour
 myTriangle:setStrokeColor( 1, 0, 0 )
 myQuadrilateral:setStrokeColor(0, 0, 1)
 myOctogon:setStrokeColor(100/255, 55/255, 17/255)
 myHeptagon:setStrokeColor(1, 0, 1)
 myWarningSign:setStrokeColor(1, 0, 0)
 


--sets the fill colour of the shapes
myTriangle:setFillColor(1, 0, 1)
myQuadrilateral:setFillColor(1, 1, 0)
myOctogon:setFillColor(0, 0, 0)
myHeptagon:setFillColor(100/255, 0/255, 15/255)
myWarningSign:setFillColor(1,1,1)



-- Displays the Triangle's Text
textTriangle = display.newText("Triangle",60,315, Arial, textSizeTriangle)
textTriangle:setFillColor(1, 0, 1)

-- Displays the Quadrilateral's text
textQuadrilateral = display.newText("Quadrilateral",155,320, Arial, textSizeQuadrilateral)
textQuadrilateral:setFillColor(1, 1, 0)

--displays the Hexagon's text
textOctogon = display.newText("Octogon",240,285, Arial, textSizeOctogon)
textOctogon:setFillColor(0,0,0)

--Displays the Heptagon's text
textHeptagon = display.newText("Heptagon",330,280, Arial, textSizeHeptagon)
textHeptagon:setFillColor(100/255, 0/255, 15/255)

-- Displays the Warning Sign's text
textMyWarningSign = display.newText("!",80,100, Arial, textMyWarningSignSize)
textMyWarningSign:setFillColor(0,0,0)
textMyWarningSignName = display.newText("WarningSign",80,160,Arial,textMyWarningSignNameSize)
textMyWarningSignName:setFillColor(0,0,0)
areaTextWarning = display.newText("The area of this Sign with a base of " .. myWarningSignBase .. 
	" and a height of ".. myWarningSignHeight .. " is " 
	.. areaOfWarningSign .. " pixels^2", 300,100,Arial,areaTextWarningSize )
 textPerimeterSign = display.newText("The Perimeter of this shape with sides of " .. signSide1 ..
 	" , " .. signSide2 ..  " and "
	.. signSide3 .. " is " .. SignPerimeter .. " pixels",300,130,Arial,textPerimeterSignSize)

--Sets the stroke width and colour of the warning sign.
myWarningSign.strokeWidth = 4
myWarningSign:setStrokeColor(1,0,0)
