*Status Update 1

Change from 64 squares to 16.

The original intention for the game was to emulate a real game of snakes and ladders. This meant that the gameboard was to be
of similar size and spec as a physical gameboard. However through the coding and testing process it has become increasingly difficult 
to manage and test the core functionality of the game. there are too many loops, too many variables and too little time to get the 
game up and running with a gamebaord of this size.

So, in order to meet the MVP and fulfill the games core mechanics, the game size has been changed from 64 squares to 16.
this change has made the somewhat daunting task of completion seem possible, and may have a possible side effect of actually
makeing gameplay more enjoyable as there will be a far lower amount of repetition whilst
playing.



*Status Update 2

Player-turn methods no longer possible.

One of the most exciting components of the game is the 'game-board class'. by converting the gameboard to a class this has allowed 
the animation of individual plare movement accross sthe screen during gameplay.

Unfortunately, this feature has created a huge roadblock in the original code layout. when each player takes their turn the 
gameboard is recreated for each step the player moves accross the board. having to use the gameboard class, and combined with my current lack 
coding ability, this has made it imposible for me to encapsulate the player turns into methods to be called upon. 

This has had an undersirable
effect on the code layout, structure and logic. as a reuslt the 'Wizard' can no longer loop properly to make the current player roll again.
becuase of this the player-turn method has had to be abandoned at this time, but hopefully in the future this can be resolved so the
game can run as intended.










