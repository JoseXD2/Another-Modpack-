function onEvent(n, v1, v2)
    if n == "change scroll" then
        change()
    end 
end

function change()
    if getPropertyFromClass('ClientPrefs', 'downScroll') then
        setPropertyFromClass("ClientPrefs", "downScroll", false)
        doTweenY("tween10", "healthBar", screenHeight * 0.89 ,0.25, 'quadOut')
        doTweenY("tween11down", "scoreTxt", screenHeight * 0.89 + 36, 0.25, "quadOut")
        setProperty("strumLine.y", 50)
        doTweenY("tween8", 'timeTxt', 20 ,0.25, 'quadOut')
        doTweenY("tween9", 'timeBar', 20 + getProperty('timeTxt.height') / 4,0.25, 'quadOut')

        for i = 1, 2 do doTweenY("tweenicon"..i, "iconP"..i, screenHeight * 0.9 - (getProperty('iconP'..i..".height") / 2) ,0.25, 'quadOut') end

        for i = 0, 8 do noteTweenY("tween"..i, i, 50, 0.25, 'quadOut') end
    else
        setPropertyFromClass("ClientPrefs", "downScroll", true)

        setProperty("strumLine.y", screenHeight - 150)

        doTweenY("tween10down", "healthBar", 54 ,0.25, 'quadOut')
        doTweenY("tween11down", "scoreTxt", 94, 0.25, "quadOut")

        doTweenY("tween8down", 'timeTxt', screenHeight - 45,0.25, 'quadOut')
        doTweenY("tween9down", 'timeBar', screenHeight - 45 + getProperty('timeTxt.height') / 4,0.25, 'quadOut')

        for i = 1, 2 do doTweenY("tweenicon"..i.."down", "iconP"..i, 50 - (getProperty('iconP'..i..".height") / 2) ,0.25, 'quadOut') end


        for i = 0, 8 do noteTweenY("tween"..i.."down", i, getProperty('strumLine.y'), 0.25, 'quadOut') end


    end
end