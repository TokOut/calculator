
--[[
    The Functionality of our calculator
    
    Made by TokOut
    Born: 26/01/2003
    Made since: 27/11/2015
    Made till: Updating by calculator updates or 14/12
]]
function calculator(key, key2)
        if key == "ce" then
            number = 0
            number2 = 0
            operation = "nil"
            isNumber1 = true
            usedPi = false
            txt.value = "0"
            drawing = false
        end
    
        if key == "ans" then
            print("Answer Status")
            number2 = number
            operation = key2
        
            if key2 == "+" then
                txt.value = number .. " + "
            elseif key2 == "-" then
                txt.value = number .. " - "
            elseif key2 == "*" then
                txt.value = number .. " • "
            elseif key2 == "/" then
                txt.value = number .. " : "
            elseif key2 == "^2" then
                txt.value = number .. " ^ "
            elseif key2 == "sqrt" then
                txt.value = number .. " rooted with "
            elseif key2 == "ceil" then
                answer()
            elseif key2 == "abs" then
                answer()
            elseif key2 == "div" then
                txt.value = number .. " div "
            elseif key2 == "mod" then
                txt.value = number .. " mod "
            end
            drawing = false
            isNumber1 = false
            number = 0
            usedPi = false
        end
    
    if key == "dot" then
        if isNumber1 == true then
            -- true
            txt.value = txt.value .. "."
            number = number .. "."
        else
            -- false
            txt.value = txt.value .. "."
            number = number .. "."
        end
        drawing = false
    end
    
    if drawing == true then
        if isNumber1 == true then
            if usedPi == false then
                if number == 0 then
                    number = key
                    txt.value = number
                else
                    number = number .. key
                    txt.value = number
                end
            else
                number = 0
                usedPi = false
            end
        end
    
        if isNumber1 == false then
            if usedPi == false then
                if number == 0 then
                    number = key
                    txt.value = txt.value .. key
                else
                    number = number .. key
                    txt.value = txt.value .. key
                end
            else
                number = 0
                number2 = 0
                isNumber1 = true
                txt.value = "Error"
                usedPi = false
            end
        end
    end
    drawing = true
end

function answer()
    if operation == "+" then
        answernumber = number2 + number
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "-" then
        answernumber = number2 - number
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "/" then
        answernumber = number2 / number
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "*" then
        answernumber = number2 * number
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "^2" then
        answernumber = math.pow(number2, number)
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "sqrt" then
        answernumber = math.sqrt(number2, number)
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "ceil" then
        txt.value = txt.value .. " ~~ " .. math.ceil(number2)
        answernumber = math.ceil(number2)
    elseif operation == "abs" then
        if number2 >= 1 then
            txt.value = "|" .. number2 .. "| = " .. 0 - math.abs(number2)
            answernumber = 0 - math.abs(number2)
        elseif number2 <= -1 then
            txt.value = "|" .. number2 .. "| = " .. math.abs(number2)
            answernumber = math.abs(number2)
        else
            -- Only 0
            txt.value = "0 (Actually its funny but 0 = 0)"
            number = 0
            number2 = 0
            pasteboard.copy("In the math project by " .. owner .. ", I found out, that 0 = 0")
        end
    elseif operation == "div" then
        answernumber = number2/number
        answernumber = math.floor(answernumber)
        txt.value = txt.value .. " = " .. answernumber
    elseif operation == "mod" then
        -- Actually bugging
        answernumber = number2/number
        answernumber = answernumber - math.floor(answernumber)
        txt.value = txt.value .. " = " .. answernumber
    end
    if mute == false then
        sound("Game Sounds One:Bell 2")
    end
    number = answernumber
    number2 = 0
    answernumber = 0
    usedPi = false
    isNumber1 = true
    operation = "nil"
end

function soundmuting()
    if mute == true then
        mute = false
    else
        mute = true
    end
end
