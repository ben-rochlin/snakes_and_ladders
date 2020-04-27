class Gameboard
    def initialize (p1_position, p2_position)
        @p1_position = p1_position
        @p2_position = p2_position
    
        p2 = "  "
        p3 = "  "
        p4 = "  "
        b = "  "
        s =  "🐍"
        l = "🧬"
        w = "🧙"
        b = "  "
        t = "🏆"
    
    
        #this method will recreate the array to update the char location
        def move_player_char(player_position, player_char)
            player = Array.new(16, "  ") 
            player[player_position] = player_char
            return player
        end
        #players char position
        p1 = move_player_char(p1_position, "🧛")
        p2 = move_player_char(p2_position, "🧚")
      
    game = <<-HERDOC
    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    $$ #{p1[8]}     #{9}|#{p1[9]}     #{10}|#{p1[10]}     #{11}|#{p1[11]}     #{12}|#{p1[12]}     #{13}|#{p1[13]}     #{14}|#{p1[14]}     #{15}|#{p1[15]}     #{16}|$$
    $$ #{p2[8]}    #{b}|#{p2[9]}     #{b}|#{p2[10]}     #{b}|#{p2[11]}     #{s}|#{p2[12]}     #{b}|#{p2[13]}     #{b}|#{p2[14]}     #{b}|#{p2[15]}     #{t}|$$
    $$ #{p3}    #{b}|#{p3}     #{b}|#{p3}     #{b}|#{p3}     #{s}|#{p3}     #{b}|#{p3}     #{b}|#{p3}     #{b}|#{p3}     #{t}|$$
    $$ #{p4}    #{b}|#{p4}     #{b}|#{p4}     #{b}|#{p4}     #{s}|#{p4}     #{b}|#{p4}     #{b}|#{p4}     #{b}|#{p4}     #{t}|$$
    $$_________|_________|_________|_________|_________|_________|_________|_________|$$
    $$ #{p1[0]}      |#{p1[1]}      #{2}|#{p1[2]}      #{3}|#{p1[3]}      #{4}|#{p1[4]}      #{5}|#{p1[5]}      #{6}|#{p1[6]}      #{7}|#{p1[7]}      #{8}|$$
    $$ #{p2[0]}      |#{p2[1]}     #{b}|#{p2[2]}     #{l}|#{p2[3]}     #{b}|#{p2[4]}     #{b}|#{p2[5]}     #{b}|#{p2[6]}     #{w}|#{p2[7]}     #{b}|$$
    $$ #{p3}      |#{p3}     #{b}|#{p3}     #{l}|#{p3}     #{b}|#{p3}     #{b}|#{p3}     #{b}|#{p3}     #{w}|#{p3}     #{b}|$$
    $$ #{p4}      |#{p4}     #{b}|#{p4}     #{l}|#{p4}     #{b}|#{p4}     #{b}|#{p4}     #{b}|#{p4}     #{w}|#{p4}     #{b}|$$
    $$_________|_________|_________|_________|_________|_________|_________|_________|$$
    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    HERDOC
    system("clear")

    puts "\n\n                MAGIC Snakes and ladders... and the drunk wizard! 16 step edition \n "
   
    puts game
    end
end



p1_name = "Player 1"
player_1 = 0
player_2 = 0



#GAME BEGIN
Gameboard.new(player_1,player_2)


#player dice/roll
def player_roll(player_name, player_position)
    # dice_roll = rand(1..3)
    dice_roll = 2
    puts "         -- #{player_name} rolled a #{dice_roll} \n \n "
    sleep 2
    puts "\n \n                           *press enter to move your character forwards*"
    gets
    sleep 1
    player_position += dice_roll
    return player_position
end

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

player_1 = 0

while player_1 < 15 
        loop do 


            #player_1 turn
                puts "\n      player '1' press enter to roll the dice"
                roll = gets
                sleep 1.5
                play1_pos_before_roll = player_1

                player_1 = player_roll(p1_name, player_1)

                if player_1 >= 15 
                    player_1 = 15
                end

                play1_pos_after_roll = player_1
                player1_movement = play1_pos_before_roll .. play1_pos_after_roll
                
                player1_movement_meth_forwards(player1_movement, player_2)

                    if player_1 == 2
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
                        sleep 2
                        puts "\n \n                                  press enter to continue"
                        gets
                        puts
                        new_position = 5
                        player_1 = new_position

                    elsif player_1 == 11 
                        
                        puts "\n     You have landed on a pesky snake, 🐍\n \n"
                        sleep 2
                        puts "     you have to slip back down sorry :(     \n\n"
                        sleep 3
                        puts "\n \n                          press enter to continue"
                        gets
                        play1_pos_before_snake = player_1
                        play1_pos_after_snake = 4
                        player1_movement = play1_pos_after_snake .. play1_pos_before_snake 
                        player1_movement_meth_backwards(player1_movement, player_2)
                        player_1 = 4
                        sleep 2
                        puts "\n \n                                  press enter to continue"
                        gets
                        puts
                        

                    elsif player_1 == 6 
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
                                play1_pos_before_wiz = player_1
                                play1_pos_after_wiz = player_1 + 5 
                                # rand(4..5)
                                player1_after_wiz = play1_pos_after_wiz
                                player1_movement = play1_pos_before_wiz .. play1_pos_after_wiz
                                player1_movement_meth_forwards(player1_movement, player_2)
                                player_1 = player1_after_wiz
                                Gameboard.new(player_1,player_2)
                                # player_wiz_landing(player_1,player_2)
                                player_1 = player1_after_wiz

                            elsif wiz == 2
                                puts "     you have encounted an angry wizard :( \n \n"
                                sleep 2
                                puts "     the wizard has cast a mean spell and will send you backwards! goodluck     \n\n"
                                sleep 2
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
                                # player1_turn(player_1,player_2,p1_name)
                            end

                    elsif player_1 >= 15
                          player = 15

                          sleep 2
                          puts "\n                        !!!!      PLAYER '1' WINS!    !!!!!!"
                          gets
                          puts
                      

                    end
            if player_1 == 6 and wiz != 3  
                break
            end  
        #for loop end (player turn)
        end


    #while loop end    
    end




Gameboard.new(player_1,player_2)



#obstacles 




# elsif player_1 = 7
#     puts "\n     You have landed on a Wild Wizard, 🧙\n \n"


# end

    #obstacles will live here snakes laddders etc
    # Gameboard.new(player_1,player_2)
    puts "\n \n"
  

  

    
    
    











    # sleep 1.5
    # # puts "         -- player 1 rolled a 4"
    # roll = gets.chomp
    # system("clear")
    # Gameboard.new(0,0)
    # # puts "player 1 rolled a 4"

    # roll = gets.chomp

    # play_1 = 2
    # play_2 = 2

    # Gameboard.new(play_1,play_2)