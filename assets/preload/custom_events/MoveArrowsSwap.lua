-- Event notes hooks
function onEvent(name, value1, value2)
    if name == "MoveArrowsSwap" then
        local var swap = tonumber(value1)
        local var unSwap = tonumber(value2)
        if unSwap == 1 then
            -- 1
            noteTweenX("backx5", 4, 740, 0.6, "quartInOut");
            noteTweenAngle("backr5", 4, -360, 0.6, "quartInOut");
            noteTweenAlpha("backo5", 4, 1, 0.6,"quartInOut");
            -- 2
            noteTweenX("backx6", 5, 852, 0.6, "quartInOut");
            noteTweenAngle("backr6", 5, -360, 0.6, "quartInOut");
            noteTweenAlpha("backo6", 5, 1, 0.6, "quartInOut");
            -- 3
            noteTweenX("backx7", 6, 963, 0.6, "quartInOut");
            noteTweenAngle("backr7", 6, -360, 0.6, "quartInOut");
            noteTweenAlpha("backo7", 6, 1, 0.6, "quartInOut");
            -- 4
            noteTweenX("backx8", 7, 1075, 0.6, "quartInOut");
            noteTweenAngle("backr8", 7, -360, 0.6, "quartInOut");
            noteTweenAlpha("backo8", 7, 1, 0.6, "quartInOut");
            -- opp 1
            noteTweenX("backx1", 0, 92, 0.6, "quartInOut");
            noteTweenAngle("backr1", 0, 360, 0.6, "quartInOut");
            noteTweenAlpha("backo1", 0, 1, 0.6, "quartInOut");
            -- opp 2
            noteTweenX("backx2", 1, 203, 0.6, "quartInOut");
            noteTweenAngle("backr2", 1, 360, 0.6, "quartInOut");
            noteTweenAlpha("backo2", 1, 1, 0.6, "quartInOut");
            -- opp 3 
            noteTweenX("backx3", 2, 314, 0.6, "quartInOut");
            noteTweenAngle("backr3", 2, 360, 0.6, "quartInOut");
            noteTweenAlpha("backo3", 2, 1, 0.6, "quartInOut");
            -- opp 4
            noteTweenX("backx4", 3, 425, 0.6, "quartInOut");
            noteTweenAngle("backr4", 3, 360, 0.6, "quartInOut");
            noteTweenAlpha("backo4", 3, 1, 0.6, "quartInOut");
        end

        if swap == 1 then
                        -- *your notes* --
                -- !your note 1
            noteTweenX("x5", 4, 92, 0.6, "quartInOut");
            noteTweenAngle("r5", 4, 360, 0.6, "quartInOut");
            noteTweenAlpha("o5", 4, 1, 0.6,"quartInOut");
                -- !your note 2
            noteTweenX("x6", 5, 203, 0.6, "quartInOut");
            noteTweenAngle("r6", 5, 360, 0.6, "quartInOut");
            noteTweenAlpha("o6", 5, 1, 0.6, "quartInOut");
                -- !your note 3
            noteTweenX("x7", 6, 314, 0.6, "quartInOut");
            noteTweenAngle("r7", 6, 360, 0.6, "quartInOut");
            noteTweenAlpha("o7", 6, 1, 0.6, "quartInOut");
                -- !your note 4
            noteTweenX("x8", 7, 425, 0.6, "quartInOut");
            noteTweenAngle("r8", 7, 360, 0.6, "quartInOut");
            noteTweenAlpha("o8", 7, 1, 0.6, "quartInOut");
                
                        -- *opp notes* --
            noteTweenX("x1", 0, 740, 0.6, "quartInOut");
            noteTweenAngle("r1", 0, -360, 0.6, "quartInOut");
            noteTweenAlpha("o1", 0, 1, 0.6, "quartInOut");
                -- opp note 1 
            noteTweenX("x2", 1, 852, 0.6, "quartInOut");
            noteTweenAngle("r2", 1, -360, 0.6, "quartInOut");
            noteTweenAlpha("o2", 1, 1, 0.6, "quartInOut");
                -- opp note 2 
            noteTweenX("x3", 2, 963, 0.6, "quartInOut");
            noteTweenAngle("r3", 2, -360, 0.6, "quartInOut");
            noteTweenAlpha("o3", 2, 1, 0.6, "quartInOut");
                -- opp note 3
            noteTweenX("x4", 3, 1075, 0.6, "quartInOut");
            noteTweenAngle("r4", 3, -360, 0.6, "quartInOut");
            noteTweenAlpha("o4", 3, 1, 0.6, "quartInOut");
        end

            -- !ups n' downs
        --    noteTweenY("y5",4,bleh,grusd,"quartInOut");
        --    noteTweenY("y6",5,nah,noe,"quartInOut");
        --    noteTweenY("y7",6,but,hey,"quartInOut");
        --    noteTweenY("y8",7,no,need,"quartInOut");
            -- !opp
        --    noteTweenY("y1",0,newnotePosY,0.6, "quartInOut");
        --    noteTweenY("y2",1,newnotePosY,0.6, "quartInOut");
        --    noteTweenY("y3",2,newnotePosY,0.6, "quartInOut");
        --    noteTweenY("y4",3,newnotePosY,0.6, "quartInOut");

    end
end