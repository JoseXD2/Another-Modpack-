function onEvent(name, value1, value2)
        if value1 == 'on' then
            setProperty('cpuControlled', true)
        else
            setProperty('cpuControlled', false)
    end
end