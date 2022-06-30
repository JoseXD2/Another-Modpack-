function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
             makeAnimatedLuaSprite('crashgame','num0', -1000, -1000) --this crashes the game because theres no xml file with the image 'num0'
	end
end

local defaultNotePos = {}
local spin = 180 -- how much it moves before going the other direction
 
function onSongStart()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000 --How long it will take.
    
    if curStep >= 0 and curStep < 200000000 then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
end

function onSongStart()
	notePosY0 = getPropertyFromGroup('opponentStrums', 0, 'y')
	notePosY1 = getPropertyFromGroup('opponentStrums', 1, 'y')
	notePosY2 = getPropertyFromGroup('opponentStrums', 2, 'y')
	notePosY3 = getPropertyFromGroup('opponentStrums', 3, 'y')

	notePosX4 = getPropertyFromGroup('playerStrums', 0, 'x')
	notePosX5 = getPropertyFromGroup('playerStrums', 1, 'x')
	notePosX6 = getPropertyFromGroup('playerStrums', 2, 'x')
	notePosX7 = getPropertyFromGroup('playerStrums', 3, 'x')

	noteTweenY('a', 0, (notePosY0 - 50), 0.2, "sineInOut")
	noteTweenY('b', 1, (notePosY1 - 50), 0.25, "sineInOut")
	noteTweenY('c', 2, (notePosY2 - 50), 0.3, "sineInOut")
	noteTweenY('d', 3, (notePosY3 - 50), 0.35, "sineInOut")

	noteTweenX('e', 4, (notePosX4 - 315), 1.5, "expoInOut")
	noteTweenX('f', 5, (notePosX5 - 315), 1.5, "expoInOut")
	noteTweenX('g', 6, (notePosX6 - 315), 1.5, "expoInOut")
	noteTweenX('h', 7, (notePosX7 - 315), 1.5, "expoInOut")
end

function onTweenCompleted(tag)
	if tag == "a" then
		noteTweenY('a', 0, (notePosY0 + 100), 0.5, "sineInOut")
		noteTweenAlpha('ao', 0, 0, 0.25, "")
	end
	if tag == "b" then
		noteTweenY('b', 1, (notePosY1 + 100), 0.5, "sineInOut")
		noteTweenAlpha('bo', 1, 0, 0.25, "")
	end
	if tag == "c" then
		noteTweenY('c', 2, (notePosY2 + 100), 0.5, "sineInOut")
		noteTweenAlpha('co', 2, 0, 0.25, "")
	end
	if tag == "d" then
		noteTweenY('d', 3, (notePosY3 + 100), 0.5, "sineInOut")
		noteTweenAlpha('do', 3, 0, 0.25, "")
	end

	if tag == "do" then
		noteTweenY('a', 0, notePosY0, 0.5, "")
		noteTweenY('b', 1, notePosY1, 0.5, "")
		noteTweenY('c', 2, notePosY2, 0.5, "")
		noteTweenY('d', 3, notePosY3, 0.5, "")
	end
end