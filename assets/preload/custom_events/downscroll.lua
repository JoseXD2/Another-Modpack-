local keepScroll = false

function onCreate()
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'upScroll') == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', true);
	end
end

function onDestroy()
	if keepScroll == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', false);
	elseif keepScroll == true then
		keepScroll = false;
	end
end