local xx = 350;
local yy = 400;
local xx2 = 300;
local yy2 = 400;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
local angleshit = 1;
local anglevar = 1;

function onCreate()
    setProperty('gf.alpha', 0);
    setProperty('boyfriend.alpha', 0);
    setPropertyFromClass('GameOverSubstate', 'characterName', 'nat scary'); --Character json file for the death animation
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end

function onUpdate()

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        triggerEvent('Camera Follow Pos',xx,yy)
    end
end

