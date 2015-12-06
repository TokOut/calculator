TextPanel = class()

function TextPanel:init(value)
    self.value = value
    self.color = color(183, 181, 181, 255)
    self.textsize = 50
end

function TextPanel:draw()
    fill(70, 70, 70, 255)
    rect(0, HEIGHT - 75, 1023.5, 75)
    fill(self.color)
    font("AcademyEngravedLetPlain")
    fontSize(self.textsize)
    text(self.value, WIDTH/2, HEIGHT - 50)
end
