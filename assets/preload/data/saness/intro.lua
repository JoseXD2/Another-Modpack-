--Script Made by:
	--Zoe.exe :3
	--Angel(from Discord)
	--ImpostordeSus(Main Porter)

--Easy Scripts Angel said lol(Strings)
IntroSubTextSize = 40 
--size of the text for the Song Name.
IntroTagWidth = 25	
--Width of the box's tag thingy.

--for Creating Shit
function onCreate()
	--The Circle Thing

	--The Box Intro Song!

	makeLuaSprite('JukeBox', 'musicBar', 0-IntroTagWidth, 15)
	setObjectCamera('JukeBox', 'other')
	setProperty('JukeBox.y', 450);
	setProperty('JukeBox.alpha', 0.7);
	setProperty('JukeBox.x', 1400);
	addLuaSprite('JukeBox', true)

	--Text for Song Name
	if songName =='Saness' then
		makeLuaText('JukeBoxSubText', 'Crystalslime - Saness', 0-IntroTagWidth, 60)
		setTextAlignment('JukeBoxSubText', 'left')
		setObjectCamera('JukeBoxSubText', 'other')
		setProperty('JukeBoxSubText.alpha', 0.7);
		setTextSize('JukeBoxSubText', IntroSubTextSize)
		setProperty('JukeBoxSubText.y', 450);
		setProperty('JukeBoxSubText.x', 1400);
		setTextFont('JukeBoxSubText', 'ComicSans.ttf')
		addLuaText('JukeBoxSubText')
	end
	setObjectOrder('intro', 4)
	setObjectOrder('JukeBox', 2)
	setObjectOrder('ready', 1)
	setObjectOrder('camera', 3)
	setProperty('skipCountdown', true)
end

--For Song Intro Tween
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInTwo', 'JukeBox', 550, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 630, 1, 'CircInOut')
	runTimer('JukeBoxWait', 6, 1)
end

--Timer Callback
function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutTwo', 'JukeBox', 1300, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', 1380, 1.5, 'CircInOut')
	end
	if tag == 'goodbyejuke' then
		removeLuaSprite('JukeBox', true)
		removeLuaText('JukeBoxSubText', true)
	end
end

----to who uses thus script,please change name the name of the song(the data song of on week song idk)to work almost all of this