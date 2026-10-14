
--For ben with big hugs 
 
require("L5") 
 

brushSize = 50 
 

function setup() 

    size(800, 800) 
    background(255) 
 

    -- Ben's colors 

    JetBlack = color(26, 28, 44) DarkPurple = color(93, 39, 93) Crimson = color(177, 62, 83) 
    Orange = color(239, 125, 87) Yellow = color(255, 205, 117) LimeGreen = color(167, 240, 112) 
    JadeGreen = color(56, 183, 100) SeaBlue = color(37, 113, 121) NavyBlue = color(41, 54, 111) 
    NeutralBlue = color(59, 93, 201) LightBlue = color(65, 166, 246) BrightCyan = color(115, 239, 247) 
    HighWhite = color(244, 244, 244) AlmostWhite = color(148, 176, 194) Midgray = color(86, 108, 134) 
    DarkGray = color(51, 60, 87) 
    
    ColorList = { JetBlack, DarkPurple, Crimson, Orange, Yellow, LimeGreen, JadeGreen,
    SeaBlue, NavyBlue, NeutralBlue, LightBlue, BrightCyan, HighWhite, AlmostWhite, Midgray, DarkGray} 

 

    CurrentSelection = 1 
    AltSelection = 2 

 

    noStroke() 
    drawSidebar() 

end 

 

function drawSidebar() 

    -- Gray sidebar 

    noStroke() 

    fill(220) 

    rect(0, 0, 170, 800) 

 

    -- Instructions 

    fill(0) 

    textSize(16) 

    text("CONTROLS", 20, 35) 

 

    textSize(13) 

    text("Click - Draw", 20, 80) 

    text("S - Save Image", 20, 110) 

    text("] - Bigger Brush", 20, 140) 

    text("[ - Smaller Brush", 20, 170) 

    text("T - Change Color", 20, 200) 

    text("R - Background Color", 20, 230) 

    text("Backspace - Fill", 20, 260) 

    text("Background Color", 20, 630)

    text("Brush Color", 20, 440)



end 

 

function draw() 

    -- Draw with the selected color 

    if mouseIsPressed == true 

       and mouseX > 170 + brushSize / 2 then 

 

        noStroke() 

        fill(ColorList[CurrentSelection]) 

        circle(mouseX, mouseY, brushSize) 

    end 

  if CurrentSelection > 16 then 
    CurrentSelection = 1 
  end 
    fill(ColorList[CurrentSelection]) 
    circle(85, 525, 80) 

if AltSelection > 16 then 
    AltSelection = 1 

  end
    fill(ColorList[AltSelection]) 
    square(45, 675, 80) 

end 

 

function mousePressed() 

end 

 

function keyPressed() 

 

    -- Save image 

    if key == "s" then 

        save("myDrawing.png") 

    end 

 

    -- Increase brush size 

    if key == "]" then 

        brushSize = brushSize + 10 

    end 

 

    -- Decrease brush size 

    if key == "[" then 

        brushSize = math.max(10, brushSize - 10) 

    end 

 

    -- Change brush color 

    if key == "t" then 
        CurrentSelection = CurrentSelection + 1 
    end

 

    -- Change background color selection 

    if key == "r" then 

        AltSelection = AltSelection + 1 

 

        if AltSelection > 16 then 

            AltSelection = 1 

        end 

    end 

 

    -- Fill background with selected color 

    if key == "backspace" then 

        noStroke() 

        fill(ColorList[AltSelection]) 

        rect(170, 0, 630, 800) 

 

        -- Keep sidebar visible 

        drawSidebar() 

    end 

end 

 
