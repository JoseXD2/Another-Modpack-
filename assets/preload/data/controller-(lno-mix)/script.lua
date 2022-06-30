function onCreate()
    newGraphic('screenDarken', -1000, -500, 3280, 1720, '000000', 1)
    newText('psText', '', 0, 730, 300, 35, 'center')
    newText('psText2', '', 0, 730, 370, 35, 'center')
    setObjectCamera('dad', 'hud')
    setProperty('dad.origin.x', 0)
    setProperty('dad.origin.y', 700)
    setProperty('healthBar.y', -800)
    setProperty('iconP1.y', -800)
    setProperty('iconP2.y', -800)
    setProperty('scoreTxt.x', 260)
    setProperty('timeBar.x', 710)
    setProperty('timeTxt.x', 710)
    triggerEvent('Camera Follow Pos', 760, 610)
    setProperty('defaultCamZoom', 1.2)
    setProperty('scoreTxt.y', (downscroll and -20 or 740))
    setProperty('timeBar.y', (downscroll and 740 or -40))
    setProperty('timeTxt.y', (downscroll and 740 or -40))
    setProperty('dad.scale.x', 1.25)
    setProperty('dad.scale.y', 1.25)
    setProperty('gf.alpha', 0)
end

function onEvent(tag, val1, val2)
    if tag == 'Set Text' then
        setTextString('psText', val1)
	setTextString('psText2', val2)
    end
end

function onCreatePost()
    for i = 0,3 do
		setPropertyFromGroup('strumLineNotes',i,'x', -1000)
        setPropertyFromGroup('strumLineNotes',i + 4,'x', 2000)
    end
end

local function replace(str, what, with)
    what = string.gsub(what, "[%(%)%.%+%-%*%?%[%]%^%$%%]", "%%%1") -- escape pattern
    with = string.gsub(with, "[%%]", "%%%%") -- escape replacement
    return string.gsub(str, what, with)
end

function onUpdate()
    if curStep == 120 then
        for i = 4,7 do
            noteTweenX('ok'..i, i, 220 + (115 * i), 0.34 + (i * 0.1), 'cubeInOut')
        end
    end
    if curStep == 132 then
        doTweenY('um', 'scoreTxt', (downscroll and 10 or 690), 0.3, 'cubeInOut')
        doTweenY('uh', 'timeBar', (downscroll and 690 or 30), 0.3, 'cubeInOut')
        doTweenY('er', 'timeTxt', (downscroll and 680 or 20), 0.3, 'cubeInOut')
        doTweenAlpha('darkThingy', 'screenDarken', 0, 0.5, 'cubeInOut')
        doTweenX('yass', 'dad.scale', 1, 0.3, 'cubeInOut')
        doTweenY('yass2', 'dad.scale', 1, 0.3, 'cubeInOut')
    end
	if curStep == 400 then
		doTweenAlpha('darkThingyAgain', 'screenDarken', 1, 0.5, 'cubeInOut')
		doTweenAlpha('darkThingyUGetIt', 'camHUD', 0, 0.5, 'cubeInOut')
		setObjectCamera('screenDarken', 'other')
		
		makeLuaSprite('tiktok', 'tiktokbg', 0, 100)
		screenCenter('tiktok', 'X')
		setObjectCamera('tiktok', 'other')
		setProperty('tiktok.alpha', 0)
		addLuaSprite('tiktok')
	end
	if curStep == 404 then
		doTweenAlpha('StandForUkraine', 'tiktok', 1, 0.5, 'cubeInOut')
		makeLuaText('cr', 'Original song by @salemilese\nBoyfriend cover by @galaxygoddamian\nSprites done by bbpanzu\nCharting and coding done by TKTems\nLNO Mix created by LiterallyNoOne\n', 0, 0, 2000)
		setTextSize('cr', 45)
		setObjectCamera('cr', 'other')
		setTextFont('cr', 'vcr.ttf')
		screenCenter('cr', 'X')
		addLuaText('cr', true)
		doTweenY('StandForUkraineAgain', 'cr', 400, 0.5, 'cubeInOut')
	end
    screenCenter('psText', 'X')
    screenCenter('psText2', 'X')
end

function onUpdatePost()
    screenCenter('psText', 'X')
    screenCenter('psText2', 'X')
end

function newGraphic(tag, x, y, width, height, color, alpha)
	makeLuaSprite(tag, '', x, y)
	makeGraphic(tag, width, height, color)
	setObjectCamera(tag, 'hud')
	setProperty(tag..'.alpha', alpha)
    addLuaSprite(tag)
end

function newText(tag, text, width, x, y, size, alignment)
	makeLuaText(tag, text, width, x, y)
	setTextSize(tag, 60)
	setTextFont(tag, 'Montserrat-Regular.ttf')
	setProperty(tag .. '.offset.x', -280)
	addLuaText(tag, true)
end