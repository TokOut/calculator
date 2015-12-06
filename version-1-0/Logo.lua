Logo = class()

function Logo:draw()
    fill(48, 255, 0, 255)
    ellipse(640, 490, 220)
    fill(0, 255, 157, 255)
    rect(557.5, 417.5, 162.5, 145)
    stroke(255, 255, 255, 255)
    strokeWidth(15)
    line(640, 440, 640, 540)
    line(690, 490, 590, 490)
end
