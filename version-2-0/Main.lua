
usedPi = false
isNumber1 = true
number = 0
number2 = 0
drawing = true
answernumber = 0
mute = true
operation = "nil"
owner = "Anatoly W."

displayMode(OVERLAY)
displayMode(FULLSCREEN)
supportedOrientations(WIDTH)

function setup()
    -- This are fir temporary control
    parameter.watch("pasteboard.text")
    parameter.watch("number")
    parameter.watch("number2")
    parameter.watch("answernumber")
    parameter.watch("mute")
    --[[
    TextPanel
    Use this subnames:
    
    txt.value
    txt.color
    txt.textsize
    
    ]]
    txt = TextPanel("Start writing number by typing")
    
    -- The Information Page
    information = Info()
    news = News()
    logo = Logo()
    pnl = Panel()
    
    -- The Main Tag
    currentpage = information
    
    --[[
    Buttons
    Use this subnames:
    
    x, y, name, color
    
    ]]
    button1 = Button("1", 75, 75, function()
        calculator(1)
    end)
    button2 = Button("2", 150, 75, function()
        calculator(2)
    end)
    button3 = Button("3", 225, 75, function()
        calculator(3)
    end)
    button4 = Button("4", 75, 150, function()
        calculator(4)
    end)
    button5 = Button("5", 150, 150, function()
        calculator(5)
    end)
    button6 = Button("6", 225, 150, function()
        calculator(6)
    end)
    button7 = Button("7", 75, 225, function()
        calculator(7)
    end)
    button8 = Button("8", 150, 225, function()
        calculator(8)
    end)
    button9 = Button("9", 225, 225, function()
        calculator(9)
    end)
    buttonPLUS = Button("+", 375, 75, function()
        calculator("ans", "+")
    end)
    buttonMINUS = Button("-", 375, 150, function()
        calculator("ans", "-")
    end)
    buttonMULTIPLIE = Button("•", 450, 75, function()
        calculator("ans", "*")
    end)
    buttonDIVIDE = Button(":", 450, 150, function()
        calculator("ans", "/")
    end)
    buttonPI = Button("PI", 225, 525, function()
        calculator(math.pi)
        usedPi = true
    end)
    copytext = Button("Copy", 750, 75, function()
        pasteboard.copy("I copied in the math programm by " .. owner .. " and the answer was '".. answernumber .. "'")
    end)
    answerbutton = Button("=", 525, 225, function()
        answer()
    end)
    button0 = Button("0", 525, 150, function()
        calculator(0)
    end)
    clearbutton = Button("CE", 450, 225, function()
        calculator("ce")
    end)
    button00 = Button("00", 525, 75, function()
        calculator(00)
    end)
    soundmute = Button("🔈", 675, 75, function()
        soundmuting()
    end)
    stepeni = Button("Pow", 75, 375, function()
        calculator("ans", "^2")
    end)
    korni = Button("Root", 150, 375, function()
        calculator("ans", "sqrt")
    end)
    ceil = Button("~", 825, 75, function()
        calculator("ans", "ceil")
    end)
    infobutton = ActivateButton("About", 675, 150, function()
        currentpage = information
    end)
    bugsbutton = ActivateButton("News", 750, 150, function()
        currentpage = news
    end)
    logobutton = ActivateButton("Logo", 825, 150, function()
        currentpage = logo
    end)
    abs = Button("|-5|", 225, 375, function()
        calculator("ans", "abs")
    end)
    homepagegithub = Button("Script (v1)", 675, 225, function()
        openURL("https://github.com/TokOut/calculator/tree/master/version-1-0", true)
    end, 150)
    panel = Button("Developer Panel", 75, 450, function()
        currentpage = pnl
    end, 225)
    secondgithubpage = Button("Main", 825, 225, function()
        openURL("https://github.com/TokOut/calculator/", true)
    end)
    div = Button("div", 75, 525, function()
        calculator("ans", "div")
    end)
    dot = Button(",", 375, 225, function()
        calculator("dot")
    end)
    mod = Button("mod", 150, 525, function()
        calculator("ans", "mod")
    end)
end

function draw()
    background(127, 127, 127, 255)
    button1:draw()
    button2:draw()
    button3:draw()
    button4:draw()
    button5:draw()
    button6:draw()
    button7:draw()
    button8:draw()
    button9:draw()
    button0:draw()
    buttonDIVIDE:draw()
    buttonMINUS:draw()
    buttonMULTIPLIE:draw()
    buttonPLUS:draw()
    buttonPI:draw()
    copytext:draw()
    txt:draw()
    answerbutton:draw()
    clearbutton:draw()
    soundmute:draw()
    button00:draw()
    stepeni:draw()
    korni:draw()
    ceil:draw()
    abs:draw()
    infobutton:draw()
    bugsbutton:draw()
    logobutton:draw()
    homepagegithub:draw()
    panel:draw()
    secondgithubpage:draw()
    div:draw()
    dot:draw()
    mod:draw()
    
    -- The information page
    
    fill(255, 255, 255, 255)
    rect(375, 375, 525, 225)
    fill(0, 0, 0, 255)
    currentpage:draw()
end

function touched(t)
    button1:touched(t)
    button2:touched(t)
    button3:touched(t)
    button4:touched(t)
    button5:touched(t)
    button6:touched(t)
    button7:touched(t)
    button8:touched(t)
    button9:touched(t)
    button0:touched(t)
    buttonMINUS:touched(t)
    buttonMULTIPLIE:touched(t)
    buttonPLUS:touched(t)
    buttonDIVIDE:touched(t)
    buttonPI:touched(t)
    copytext:touched(t)
    answerbutton:touched(t)
    clearbutton:touched(t)
    soundmute:touched(t)
    button00:touched(t)
    stepeni:touched(t)
    korni:touched(t)
    ceil:touched(t)
    infobutton:touched(t)
    bugsbutton:touched(t)
    logobutton:touched(t)
    abs:touched(t)
    homepagegithub:touched(t)
    panel:touched(t)
    secondgithubpage:touched(t)
    div:touched(t)
    dot:touched(t)
    mod:touched(t)
end
