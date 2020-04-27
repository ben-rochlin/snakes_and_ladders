require './class_gameboard.rb'
require './dice_method.rb'
require './player_movement_methods.rb'

p1_name = "Player 1"
p2_name = "Player 2"
player_1 = 0
player_2 = 0

Gameboard.new(player_1,player_2)





#GAME BEGIN
while player_1 or player_2 <15

                #player_1 turn
                    puts "\n      player '1' press enter to roll the dice"
                    roll = gets
                    sleep 2

                    play1_pos_before_roll = player_1

                    #player roll is a roll of the dice
                    player_1 = player_roll(p1_name, player_1)


                    #this if statement declares the end of the game
                    if player_1 >= 15 
                        player_1 = 15
                        play1_pos_after_roll = player_1
                        player1_movement = play1_pos_before_roll .. play1_pos_after_roll
                        
                        player1_movement_meth_forwards(player1_movement, player_2)
                        sleep 1.5

                            puts "\n                        !!!!      PLAYER '1' WINS!    !!!!!!"
                            gets
                            break
                    end
    

                    play1_pos_after_roll = player_1
                    player1_movement = play1_pos_before_roll .. play1_pos_after_roll
                    
                    player1_movement_meth_forwards(player1_movement, player_2)



                        if player_1 == 2
                            sleep 2
                            puts "\n     You have landed on a ladder, 🧬\n \n"
                            sleep 2

                            puts "     you get to climb the ladder! :)     \n\n"
                            sleep 2

                            puts "\n \n                                  press enter to continue"
                            gets
                            play1_pos_before_ladder = player_1
                            play1_pos_after_ladder = 5
                            player1_movement = play1_pos_before_ladder .. play1_pos_after_ladder
                            player1_movement_meth_forwards(player1_movement, player_2)
                            player_1 = 5
                            sleep 1

                            puts "\n \n                                  press enter to continue"
                            gets
                            system("clear")
                            Gameboard.new(player_1,player_2)
                            puts
                            new_position = 5
                            player_1 = new_position

                        elsif player_1 == 11 
                            sleep 2
                            puts "\n     You have landed on a pesky snake, 🐍\n \n"
                            sleep 2

                            puts "     you have to slip back down sorry :(     \n\n"
                            sleep 3
                            puts "                           press enter to continue"
                            gets
                            play1_pos_before_snake = player_1
                            play1_pos_after_snake = 4
                            player1_movement = play1_pos_after_snake .. play1_pos_before_snake 
                            player1_movement_meth_backwards(player1_movement, player_2)
                            player_1 = 4
                            sleep 1

                            puts "\n \n                                  press enter to continue"
                            gets
                            system("clear")
                            Gameboard.new(player_1,player_2)
                            puts
                            

                        elsif player_1 == 6 
                            sleep 2
                            puts "\n     You have landed on a Wild Wizard, 🧙\n \n"
                            sleep 2.5

                            wiz = rand(1..3)
                            # wiz_spell_length = rand (1..5)
                                if wiz == 1
                                    puts "     you have encounted a happy wizard \n \n"
                                    sleep 1

                                    puts "     the wizard has cast a happy spell and will send you to the stars! goodluck :)     \n\n"
                                    sleep 1

                                    puts "\n \n                                press enter to continue"
                                    gets
                                    play1_pos_before_wiz = player_1
                                    play1_pos_after_wiz = player_1 + 4 
                                    # rand(4..5)
                                    player1_after_wiz = play1_pos_after_wiz
                                    player1_movement = play1_pos_before_wiz .. play1_pos_after_wiz
                                    player1_movement_meth_forwards(player1_movement, player_2)
                                    player_1 = player1_after_wiz
                                    # Gameboard.new(player_1,player_2)
                                    # player_wiz_landing(player_1,player_2)
                                    player_1 = player1_after_wiz

                                elsif wiz == 2
                                    puts "     you have encounted an angry wizard :( \n \n"
                                    sleep 1

                                    puts "     the wizard has cast a mean spell and will send you backwards! goodluck     \n\n"
                                    sleep 1

                                    puts "\n \n                                press enter to continue"
                                    gets
                                    play1_pos_before_wiz = player_1
                                    play1_pos_after_wiz = 3
                                    player1_movement = play1_pos_after_wiz .. play1_pos_before_wiz 
                                    player1_movement_meth_backwards(player1_movement, player_2)
                                    player_1 = 3
                                    # player_wiz_landing(player_1,player_2)

                                elsif wiz == 3
                                    puts "     you have encounted a drunk wizard :/ \n \n"
                                    sleep 1

                                    puts "     the wizard is passed out... and lets the player roll again     \n\n"
                                    sleep 1

                                    puts "\n \n                                press enter to roll again"
                                    gets
                                    sleep 1

                                    system("clear")
                                    # Gameboard.new(player_1,player_2)
                                    play1_pos_before_wiz = player_1
                                    play1_pos_after_wiz = player_1 + rand(1..3)
                                    player1_after_wiz = play1_pos_after_wiz
                                    player1_movement = play1_pos_before_wiz .. play1_pos_after_wiz
                                    player1_movement_meth_forwards(player1_movement, player_2)
                                    player_1 = player1_after_wiz
                                    # Gameboard.new(player_1,player_2)

                                    # player_wiz_landing(player_1,player_2)
                                    player_1 = player1_after_wiz
                                    system("clear")
                                    Gameboard.new(player_1,player_2)
                                    puts
                                    sleep 1

                                    # player1_turn(player_1,player_2,p1_name)
                    
                                end
                            end
     
           
                    
        
                        #player_2 turn
                        puts "\n      player '2' press enter to roll the dice"
                        roll = gets
                        sleep 2

                        play2_pos_before_roll = player_2
                        player_2 = player_roll(p2_name, player_2)
        
                        if player_2 >= 15 
                            player_2 = 15
                            play2_pos_after_roll = player_2
                            player_movementt = play2_pos_before_roll .. play2_pos_after_roll
                            
                            player2_movement_meth_forwards(player_1, player_movementt)
                            sleep 1.5

                                  puts "\n                        !!!!      PLAYER '2' WINS!    !!!!!!"
                                  gets
                                  break
                        end
        
                            play2_pos_after_roll = player_2
                            player_movementt = play2_pos_before_roll .. play2_pos_after_roll
                            
                            player2_movement_meth_forwards(player_1, player_movementt)
        
                            if player_2 == 2
                                sleep 2
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
                                sleep 1

                                puts "\n \n                                  press enter to continue"
                                gets
                                system("clear")
                                Gameboard.new(player_1,player_2)
                                puts
                                new_position = 5
                                player_2 = new_position
        
                            elsif player_2 == 11 
                                sleep 2
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
                                sleep 1

                                puts "\n \n                                  press enter to continue"
                                gets
                                system("clear")
                                Gameboard.new(player_1,player_2)
                                puts
                                
        
                            elsif player_2 == 6 
                                puts "\n     You have landed on a Wild Wizard, 🧙\n \n"
                                sleep 2.5

                                wiz = rand(1..3)
                                # wiz_spell_length = rand (1..5)
                                    if wiz == 1
                                        puts "     you have encounted a happy wizard \n \n"
                                        sleep 1

                                        puts "     the wizard has cast a happy spell and will send you to the stars! goodluck :)     \n\n"
                                        sleep 1

                                        puts "\n \n                                press enter to continue"
                                        gets
                                        play2_pos_before_wiz = player_2
                                        play2_pos_after_wiz = player_2 + 4 
                                        # rand(4..5)
                                        player2_after_wiz = play2_pos_after_wiz
                                        player_movementt = play2_pos_before_wiz .. play2_pos_after_wiz
                                        player2_movement_meth_forwards(player_1, player_movementt)
                                        player_2 = player2_after_wiz
                                        # Gameboard.new(player_2,player_2)
                                        # player_wiz_landing(player_2,player_2)
                                        player_2 = player2_after_wiz
        
                                    elsif wiz == 2
                                        puts "     you have encounted an angry wizard :( \n \n"
                                        sleep 1

                                        puts "     the wizard has cast a mean spell and will send you backwards! goodluck     \n\n"
                                        sleep 1

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
                                        sleep 1

                                        puts "     the wizard is passed out... and lets the player roll again     \n\n"
                                        sleep 1

                                        puts "\n \n                                press enter to roll again"
                                        gets
                                        sleep 1

                                        system("clear")
                                        Gameboard.new(player_1,player_2)
                                        play2_pos_before_wiz = player_2
                                        play2_pos_after_wiz = player_2 + rand(1..3)
                                        player2_after_wiz = play2_pos_after_wiz
                                        player_movementt = play2_pos_before_wiz .. play2_pos_after_wiz
                                        player2_movement_meth_forwards(player_1, player_movementt)
                                        player_2 = player2_after_wiz
                                        # Gameboard.new(player_2,player_2)
                                        # player_wiz_landing(player_2,player_2)
                                        player_2 = player2_after_wiz
                                        puts
                                        sleep 1

                                        # player1_turn(player_2,player_2,p2_name)
                                    end
                                end
                                                    
end  
Gameboard.new(player_1,player_2)






    puts "\n \n"
  

  

    
    
    










