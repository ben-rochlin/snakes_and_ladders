#player 1 movement methods


def player1_movement_meth_forwards (player_movementt, playerr_2)
    sleep 3
    player_movementt.each do |x|
        Gameboard.new(x,playerr_2)
        sleep 1
    end
end

def player1_movement_meth_backwards (player_movementt, playerr_2)
    sleep 3
    player_movementt.reverse_each  do |x|
        Gameboard.new(x,playerr_2)
        sleep 1
    end
end



#player 2 movement methods
def player2_movement_meth_forwards (player_1, player_movementt)
    sleep 3
    player_movementt.each do |x|
        Gameboard.new(player_1,x)
        sleep 1
    end
end

def player2_movement_meth_backwards (player_1, player_movementt)
    sleep 3
    player_movementt.reverse_each  do |x|
        Gameboard.new(player_1,x)
        sleep 1
    end
end