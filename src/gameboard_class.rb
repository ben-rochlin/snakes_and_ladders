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





#player dice/roll
def player_roll(player_name, player_position)
    dice_roll = rand(1..3)
    puts "         -- #{player_name} rolled a #{dice_roll}"
    player_position += dice_roll
    return player_position
end

def player1_movement_meth (player_movementt, playerr_2)
    player_movementt.each do |x|
        Gameboard.new(x,playerr_2)
        sleep 1
    end
end

 
#GAME BEGIN
Gameboard.new(player_1,player_2)

#player 1's turn    
    puts "\n      player '1' press enter to roll the dice"
    roll = gets
    sleep 1.5
    play1_pos_before_roll = player_1

    #diceroll
    player_1 = player_roll(p1_name, player_1)

    play1_pos_after_roll = player_1
    player1_movement = play1_pos_before_roll .. play1_pos_after_roll

player1_movement_meth(player1_movement, player_2)


    
    
    
    #obstacles will live here snakes laddders etc
    Gameboard.new(player_1,player_2)











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