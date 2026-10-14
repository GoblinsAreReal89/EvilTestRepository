require("L5") 



function setup() 
    size(800, 800) 
    background(255) 
    fill(0) 
    rectMode(CENTER)
    BackgroundColor = color(0,0,0)
end 
 

function draw() 
end 


function mousePressed() 
    circle(mouseX, mouseY, 20) 
end 

 

function keyPressed() 
    if key == "s" then 
        save("myDrawing.png") 
    end 
end 

function keyPressed() 
    if key == "Delete" then 
      fill(0)
rect(width/2, height/2, width, height)
    end 
end 
 
