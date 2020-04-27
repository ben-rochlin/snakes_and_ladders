require './class_gameboard.rb'
require './dice_method.rb'
require './player_movement_methods.rb'

p1_name = "Player 1"
p2_name = "Player 2"
player_1 = 0
player_2 = 0



#GAME BEGIN  player 2 version of game

Gameboard.new(player_1,player_2)


#player dice/roll
def player_roll(player_name, player_position)
    # dice_roll = rand(1..3)
    dice_roll = 3
    puts "         -- #{player_name} rolled a #{dice_roll} \n \n "
    sleep 2
    puts "                           press enter to move your character forwards"
    gets
    sleep 1
    player_position += dice_roll
    return player_position
end


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

while player_2 < 15 
    #game loop
    
         #player 2 turn   
            loop do 
            #drunk wizard loop    
    
                  #player_2 turn
                    puts "\n      player '2' press enter to roll the dice"
                    roll = gets
                    sleep 1.5
                    play2_pos_before_roll = player_2
    
                    player_2 = player_roll(p2_name, player_2)
    
                    if player_2 >= 15 
                        player_2 = 15
                        play2_pos_after_roll = player_2
                        player_movementt = play2_pos_before_roll .. play2_pos_after_roll
                        
                        player2_movement_meth_forwards(player_1, player_movementt)
                        sleep 2
                              puts "\n                        !!!!      PLAYER '2' WINS!    !!!!!!"
                              gets
                              break
                    end
    
                        play2_pos_after_roll = player_2
                        player_movementt = play2_pos_before_roll .. play2_pos_after_roll
                        
                        player2_movement_meth_forwards(player_1, player_movementt)
    
                        if player_2 == 2
                            puts "\n     You have landed on a ladder, 🧬\n \n"
                            sleep 2
                            puts "     you get to climb the ladder! :)     \n\n"
                            sleep 2
                            puts "\n                                    press enter to continue"
                            gets
                            play2_pos_before_ladder = player_2
                            play2_pos_after_ladder = 5
                            player_movementt = play2_pos_before_ladder .. play2_pos_after_ladder
                            player2_movement_meth_forwards(player_1, player_movementt)
                            player_2 = 5
                            sleep 2
                            puts "\n \n                                  press enter to continue"
                            gets
                            system("clear")
                            Gameboard.new(player_1,player_2)
                            puts
                            new_position = 5
                            player_2 = new_position
    
                        elsif player_2 == 11 
                            
                            puts "\n     You have landed on a pesky snake, 🐍\n \n"
                            sleep 2
                            puts "     you have to slip back down sorry :(     \n\n"
                            sleep 3
                            puts "\n \n                          press enter to continue"
                            gets
                            play2_pos_before_snake = player_2
                            play2_pos_after_snake = 4
                            player_movementt = play2_pos_after_snake .. play2_pos_before_snake 
                            player2_movement_meth_backwards(player_1, player_movementt)
                            player_2 = 4
                            sleep 2
                            puts "\n \n                                  press enter to continue"
                            gets
                            system("clear")
                            Gameboard.new(player_1,player_2)
                            puts
                            
    
                        elsif player_2 == 6 
                            puts "\n     You have landed on a Wild Wizard, 🧙\n \n"
                            sleep 2.5
                            wiz = 3
                            # wiz_spell_length = rand (1..5)
                                if wiz == 1
                                    puts "     you have encounted a happy wizard \n \n"
                                    sleep 2
                                    puts "     the wizard has cast a happy spell and will send you to the stars! goodluck :)     \n\n"
                                    sleep 2
                                    puts "\n \n                                press enter to continue"
                                    gets
                                    play2_pos_before_wiz = player_2
                                    play2_pos_after_wiz = player_2 + 5 
                                    # rand(4..5)
                                    player2_after_wiz = play2_pos_after_wiz
                                    player_movementt = play2_pos_before_wiz .. play2_pos_after_wiz
                                    player2_movement_meth_forwards(player_1, player_movementt)
                                    player_2 = player2_after_wiz
                                    Gameboard.new(player_2,player_2)
                                    # player_wiz_landing(player_2,player_2)
                                    player_2 = player2_after_wiz
    
                                elsif wiz == 2
                                    puts "     you have encounted an angry wizard :( \n \n"
                                    sleep 2
                                    puts "     the wizard has cast a mean spell and will send you backwards! goodluck     \n\n"
                                    sleep 2
                                    puts "\n \n                                press enter to continue"
                                    gets
                                    play2_pos_before_wiz = player_2
                                    play2_pos_after_wiz = 3
                                    player_movementt = play2_pos_after_wiz .. play2_pos_before_wiz 
                                    player2_movement_meth_backwards(player_1, player_movementt)
                                    player_2 = 3
                                    # player_wiz_landing(player_2,player_2)
    
                                elsif wiz == 3
                                    puts "     you have encounted a drunk wizard :/ \n \n"
                                    sleep 2
                                    puts "     the wizard is passed out... and lets the player roll again     \n\n"
                                    sleep 2
                                    puts "\n \n                                press enter to roll again"
                                    gets
                                    sleep 1.5
                                    system("clear")
                                    Gameboard.new(player_1,player_2)
                                    puts
                                    sleep 2
                                    # player1_turn(player_2,player_2,p2_name)
                                end
                            end
                                   
                if player_2 == 6 and wiz != 3  
                    break
                end  
            #for loop end (player turn)
            end
    
    
#while loop end    
end