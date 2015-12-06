ActivateButton = class()

function ActivateButton:init(name, x, y, action)
    if x == nil or y == nil then
        x = 0
        y = 0
    end
    
    if name == nil then
        name = "Nil"
    end
    self.x = x
    self.y = y
    self.name = name
    self.action = action
    self.color = color(255, 158, 0, 255)
    self.textcolor = color(0, 0, 0, 255)
end

function ActivateButton:draw()
    strokeWidth(1)
    fill(self.color)
    rect(self.x, self.y, 75, 75)
    font("AmericanTypewriter")
    fontSize(25)
    textMode(CENTER)
    fill(self.textcolor)
    text(self.name, self.x + 35, self.y + 35)
end

function ActivateButton:touched(t)
    if t.state == BEGAN and self:hit(vec2(t.y,t.x)) then
        if mute == false then
            sound("A Hero's Quest:Arrow Shoot 1")
        end
        self.color = color(189, 255, 0, 255)
        self.action()
    else
        self.color = color(255, 158, 0, 255)
    end
    
    if t.state == ENDED then
        self.color = color(255, 158, 0, 255)
    end
end

function ActivateButton:hit(p)
    local t = self.x + 75
    local b = self.x - 1
    local l = self.y - 1
    local r = self.y + 75
    if p.x > l and p.x < r and p.y > b and p.y < t then
        return true
    end
        return false
end
