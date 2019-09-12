-- Load some default values for our rectangle.
function love.load()
  button ={}
  score = 0 
   w, h =  60, 20  
  button.x = 20 
  button.y = 20 
  b = 1 
  pistol = love.graphics.newImage("gun1.png")

end

-- Increase the size of the rectangle every frame.
function love.update(dt)  
  if love.mousepressed() then 
  end

end

-- Draw a coloured rectangle.
function love.draw()
  red = 115/255
  green = 27/255
  blue = 135/255
  alpha = 50/100
  love.graphics.setBackgroundColor( red, green, blue, alpha)
    love.graphics.draw(pistol, button.x, button.y)
    love.graphics.print("Score: "..score)
end 

function love.mousepressed(x, y, b, istouch) 
  if b == 1  then 
    if distance(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < 100 then 
      score = score +1
      button.x = math.random(0, 800-w) 
      button.y = math.random(0, 600-h)
     end 
    end
end

function distance(x1, y1, x2, y2)  
  return math.sqrt((y2-y1)^2+ (x2-x1)^2)
end