require("L5") 

 
function setup() 
    size(800, 800) 
    background(255,100,100) 
    fill(0) 
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

 
