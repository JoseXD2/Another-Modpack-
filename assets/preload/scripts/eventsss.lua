function onEvent(name,a,b)
    if name == 'Evil Stage' then 
        setProperty('skyevil.visible', true)
        setProperty('backschoolevil.visible', true)
        setProperty('tresssevil.visible', true)
        setProperty('streetevil.visible', true)
        setProperty('gf.alpha', 0)
    end

    if name == 'Evil Stage Back' then
        setProperty('skyevil.visible', false)
        setProperty('backschoolevil.visible', false)
        setProperty('tresssevil.visible', false)
        setProperty('streetevil.visible', false)
        setProperty('gf.alpha', 1)
    end

    if name == 'Stage D1' then
        setProperty('skyd1.visible', true)
        setProperty('backschoold1.visible', true)
        setProperty('streetd1.visible', true)
        setProperty('tresssd1.visible', true)
        setProperty('aaaad1.visible', true)
        setProperty('freaksd.visible', true)
    end

    if name == 'Stage D1 Back' then
        setProperty('skyd1.visible', false)
        setProperty('backschoold1.visible', false)
        setProperty('streetd1.visible', false)
        setProperty('tresssd1.visible', false)
        setProperty('aaaad1.visible', false)
        setProperty('freaksd.visible', false)
    end
end