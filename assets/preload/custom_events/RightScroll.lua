-- Code by Identity123 om Gamebanana
function onEvent(name, value1, value2)
    if name == 'RightScroll' then
noteTweenX('leftmoveright',4, 750, value1,'linear');
noteTweenX('upmoveright',5, 860, value1,'linear');
noteTweenX('downmoveright',6, 970, value1,'linear');
noteTweenX('rightmoveright',7, 1080, value1,'linear');

noteTweenX('badleftmoveleft',0, 92.3, value1,'linear');
noteTweenX('badleftmoveup',1, 205, value1,'linear');
noteTweenX('badleftmovedown',2, 315, value1,'linear');
noteTweenX('badleftmoveright',3, 428, value1,'linear');

noteTweenAlpha('badarrowleftappear', 0, 100, value1, linear);
noteTweenAlpha('badarrowupappear', 1, 100, value1, linear);
noteTweenAlpha('badarrowdownappear', 2, 100, value1, linear);
noteTweenAlpha('badarrowrightappear', 3, 100, value1, linear);
end
end
