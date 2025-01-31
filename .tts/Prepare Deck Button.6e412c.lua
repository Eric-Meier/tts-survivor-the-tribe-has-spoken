self.lock()
self.interactable = false
self.tooltip = false

function click_func(player,value,id)
    singleDeck=getObjectFromGUID("57a5ca")
    doubleDeck=getObjectFromGUID("5eb4b9")

    --n = #getSeatedPlayers()
    n=5
    if n < 3 then
        broadcastToAll("You need 3 people to play!")
    else
        broadcastToAll("Preparing Deck for "..n.." Players")
        mainDeck=getObjectFromGUID("67530b")
        mainDeck.shuffle()
    end

    if n==3 then
        tribalDeck = singleDeck
        tribals = tribalDeck.getQuantity()
        mainDecks=mainDeck.split(tribals)
        for i = 1, tribals do
            mainDecks[i] = mainDecks[i].putObject(tribalDeck.takeObject({smooth=false}))
        end
        for i = 2, tribals do
            mainDeck = mainDecks[1].putObject(mainDecks[i])
        end
        mainDeck.rotate({0,-90,0})
        destroyObject(singleDeck)
        destroyObject(doubleDeck)
        destroyObject(self)
    end
    if n==4 then
        tribalDeck = singleDeck.takeObject({position={0,0,-5},smooth=false})
        tribalDeck = tribalDeck.putObject(singleDeck.takeObject({smooth=false}))
        tribalDeck = tribalDeck.putObject(doubleDeck.takeObject({smooth=false}))
        tribalDeck = tribalDeck.putObject(doubleDeck.takeObject({smooth=false}))
        tribalDeck.shuffle()
        tribals = tribalDeck.getQuantity()
        mainDecks=mainDeck.split(tribals)
        for i = 1, tribals do
            mainDecks[i] = mainDecks[i].putObject(tribalDeck.takeObject({smooth=false}))
        end
        for i = 2, tribals do
            mainDeck = mainDecks[1].putObject(mainDecks[i])
        end
        mainDeck.rotate({0,-90,0})
        destroyObject(singleDeck)
        destroyObject(doubleDeck)
        destroyObject(self)
    end
    if n==5 then
        tribalDeck = singleDeck.takeObject({position={0,0,-5},smooth=false})
        tribalDeck = tribalDeck.putObject(singleDeck.takeObject({smooth=false}))
        tribalDeck = tribalDeck.putObject(doubleDeck.takeObject({smooth=false}))
        tribalDeck = tribalDeck.putObject(doubleDeck.takeObject({smooth=false}))
        tribalDeck = tribalDeck.putObject(doubleDeck.takeObject({smooth=false}))
        tribalDeck.shuffle()
        tribals = tribalDeck.getQuantity()
        mainDecks=mainDeck.split(tribals)
        for i = 1, tribals do
            mainDecks[i] = mainDecks[i].putObject(tribalDeck.takeObject({smooth=false}))
        end
        for i = 2, tribals do
            mainDeck = mainDecks[1].putObject(mainDecks[i])
        end
        mainDeck.rotate({0,-90,0})
        destroyObject(singleDeck)
        destroyObject(doubleDeck)
        destroyObject(self)
    end
    if n==6 then
        tribalDeck = doubleDeck
        tribals = tribalDeck.getQuantity()
        mainDecks=mainDeck.split(tribals)
        for i = 1, tribals do
            mainDecks[i] = mainDecks[i].putObject(tribalDeck.takeObject({smooth=false}))
        end
        for i = 2, tribals do
            mainDeck = mainDecks[1].putObject(mainDecks[i])
        end
        mainDeck.rotate({0,-90,0})
        destroyObject(singleDeck)
        destroyObject(doubleDeck)
        destroyObject(self)
    end
end