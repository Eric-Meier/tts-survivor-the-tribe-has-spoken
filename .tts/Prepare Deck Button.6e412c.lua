self.lock()
self.interactable = false
self.tooltip = false

function click_func(player,value,id)

    function prep_deck(singles,doubles)

        destroyObject(self)
        tribalBag=spawnObject({type="Bag",position={0,1,15}})

        for i=1,singles do
            tribalBag.putObject(singleTribals[i])
        end

        for i=1,doubles do
            tribalBag.putObject(doubleTribals[i])
        end

        tribalBag.shuffle()
        
        for i,obj in ipairs(singleTribals) do
            destroyObject(obj)
        end

        for i,obj in ipairs(doubleTribals) do
            destroyObject(obj)
        end

        tribals = tribalBag.getQuantity()
        destroyObject(tribalBag)
        mainDecks=mainDeck.split(tribals)
        Physics.setGravity({0,-5,0})
        for i = 1, tribals do
            tribalBag.takeObject({smooth=false,position={5,(i-1)*0.5+1,0}}).flip()
            mainDecks[i].setPosition({5,(i-1)*0.5+1.25,0})
        end
        for i = 1, tribals do
            mainDecks[i].setRotation({-180,0,0})
        end
        Wait.time(function() 
            Physics.setGravity({0,-25,0}) 
        end, 1)
    end

    n = #getSeatedPlayers()
    -- n=3

    if n < 3 then
        broadcastToAll("Minimum of 3 players!")
    else 
        if n > 6 then
            broadcastToAll("Maximum of 6 players!")
        else
            broadcastToAll("Preparing Deck for "..n.." Players")
            mainDeck=getObjectFromGUID("67530b")
            mainDeck.shuffle()
            mainDeck.deal(3)
    
            singleTribals={
                getObjectFromGUID("e0df29"),
                getObjectFromGUID("e0c5d8"),
                getObjectFromGUID("dc242d"),
                getObjectFromGUID("09747e")
            }
            doubleTribals={
                getObjectFromGUID("8d0458"),
                getObjectFromGUID("8f4551"),
                getObjectFromGUID("22d324"),
                getObjectFromGUID("2a3f11"),
                getObjectFromGUID("7d0824")
            }
            tribalBag=getObjectFromGUID("1d5654")
        end
    end

    if n==3 then
        prep_deck(4,0)
    end
    if n==4 then
        prep_deck(2,2)
    end

    if n==5 then
        prep_deck(2,3)
    end

    if n==6 then
        prep_deck(0,5)
    end
end