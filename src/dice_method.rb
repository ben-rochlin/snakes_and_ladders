def player_roll(player_name, player_position)
    # dice_roll = rand(1..3)
    dice_roll = rand(1..3)
    sleep 1
    puts "         -- #{player_name} rolled a #{dice_roll} \n \n "
    sleep 1.5

    puts "                           press enter to move your character forwards"
    gets
    sleep 0.8
    player_position += dice_roll
    return player_position
end