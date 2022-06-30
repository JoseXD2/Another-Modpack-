-- Code by Identity123 on Gamebanana
function onEvent(name, value1, value2)
    if name == 'LeftScroll' then
noteTweenX('leftmoveleft',4, 92.3, value1,'linear');
noteTweenX('leftmoveup',5, 205, value1,'linear');
noteTweenX('leftmovedown',6, 315, value1,'linear');
noteTweenX('leftmoveright',7, 428, value1,'linear');

noteTweenX('badleftmoveright',0, 750, value1,'linear');
noteTweenX('badupmoveright',1, 860, value1,'linear');
noteTweenX('baddownmoveright',2, 970, value1,'linear');
noteTweenX('badrightmoveright',3, 1080, value1,'linear');

noteTweenAlpha('badarrowleftappear', 0, 100, value1, 'linear');
noteTweenAlpha('badarrowupappear', 1, 100, value1, 'linear');
noteTweenAlpha('badarrowdownappear', 2, 100, value1, 'linear');
noteTweenAlpha('badarrowrightappear', 3, 100, value1, 'linear');
end
end