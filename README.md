
## Magical Snakes and Ladders... and the drunk Wizard's!
---

### Statement of Purpose and Scope

"Magical Snakes & Ladders... and the drunk Wizard's!" (MSAL) is a bash-terminal application which is a fun and silly twist on the classic turn based boardgame Snakes and Ladders. MSAL can be played by up to four people and will provide a realtime visual layout of the game, including a 'game-board'and individual player positions. The core rules of the game are the same, but MSAL has a few extra feautures and rules which will expand on the orignal to enhance the fun and enjoyment of the game for a more mature audience.

MSAL is being created as part of a personal project which requires the game to run as a bash-terminal application. Because of this requirement, there was an oppurtunity to enhance the core rules and functionality of the game, so in planning and brainstorming ideas for the application, the idea of a 'Wizard' as a potential encounter during gameplay seemed to be the perfect addition.

MSAL is being created as part of a personal project by the developer, but the main goal for the application is purely for entertainment, as it hopes to give the user/s an enjoyable moment of silliness and delight during gameplay.. that is all :)

------------------------------------------------------------------------------------------------------------------------------

### Features

* Visual Game Board and Layout

The 'game-board', is an easy to understand and logically layed out graphical representation of the game. The game-board recreates the feeling of playing on a physical board and allows players to have a realtime view of the game. The game-board will allow an overview of the progression of the game and allow players to see each players positions, and the location and severity of the games 'Snakes' the 'Ladders' and the 'Wizards'.


* Interesting and creative set of Rules

The Game will provide users with an enjoyable and enhanced version of "snakes and ladders' which will see players dealing with Snakes, Ladders, Wizards and potions. The extra functionality will add a layer of entertainment and depth to the game which is not present in the original. The extra rules will see the use and implentation of an indivual user inventory system. Players can collect 'potions' which can be used to alter the behaviour of the 'Snakes' and 'Wizards'. Wizard's will provide an unpredictable and exciting edge to the game as they can tend to be very moody.. or Drunk.



* Interactive and Visual User Experience

MSAL will provide some neat visaul and interactive features to enhance the overall user experience. This will include a 'welcome' or greeting upon the application launch. A main menu which can be used to launch a new gamne, view the game rules or quit the application. Users will be able to provide their names to the application, which will further enhance and personalise the experience. A virtual 'Dice roll' will be used and manually triggered by each player for each turn they have. an ingame overlay will display information relevant to the players turn, including the sometimes funny interaction a player will have a potentially drunk wizard. Upon a player winning a congratulatory message will be displayed to celebrate the player who wins! All of these components will combine to the overall feel and completenes of the app.


------------------------------------------------------------------------------------------------------------------------------


### User Interaction and Experience

User begins the application.

Welcome message pops up

The user is taken to the main menu.

The main menu will give the user three options: 
1. Start a new game
2. Game rules - detailed instructions on how the game works.
3. Quit - The user will bne able to exit the application.

When a new game is started the user is asked how many people are going to play, up to 4 players can play a single game.
Each player will be asked to input their name.

The game-board is displayed and the game begins.

Player (x) is aksed to roll the dice (1..12), after the roll the user moves the corresponding amount of steps/squares. 

⦁ If player (X) rolls a 2 (snake eyes) the player collects a potion which will be added to their inventory.

⦁ if Player (x) lands on a square with a 'magic ladder' the ladder will produce a random number within a specific range based on the length of the ladder, and player (x) will be moved the corresponding amount of steps/squares forwards, the ladder will always land a player on an empty sqaure. 

⦁ if Player (x) lands on a square with a 'magic snake' the snake will produce a random number within a specific range based on the length of the snake, and player (x) will be moved the corresponding amount of steps/squares backwards, the snake will always land a player on an empty sqaure. IF the player has a potion in their inventory they will be asked if they wish to use the potion to subdue the snake, if the player chooses to use the potion the snake will be 'charmed' and will not move the player backwards.

⦁ if Player (x) lands on a wizard, the player, the wizard will produce one of three outcomes for the player, depending on his mood. 
1. happy wizard: will act the same as a 'magic ladder' but the user can land on an occupied sqaure
2. angry wizard: will act the same as a 'magic snake' but the user can land on an occupied square
3. drunk wizard: will let the player roll the dice again because he's passed out lol.

* If the player has a potion in their inventory, they will be asked if they wish to give the potion to the wizard.
if the player gives the wizard a potion the wizard will become either a happy wizard or a drunk wizard.


⦁ if Player (x) lands on an empty square/step they will remain there until their next turn.

Once Player (x) has settled on a square, the next player will be prompted to roll the dice and take their turn.

The First player to reach the end of the steps/squares wins.

A message congratulating the winner will pop up.

Once the game is complete, the users will be asked if they want to continue the current game to play for second/third place depending on how many people are playing.

If the user/s select yes the game will resume. If the user/s select no, the user will be asked if they would like to play again return to the main-menu or quit the application.

if they would like to play again they will be asked of they would like to play as the same characters, if yes. then the same number of players and characters will be used but a new player order will be created. if no, then the game will return to the number of/players and character select screen.


-------

### FLOW DIAGRAM:



![alt text](https://github.com/ben-rochlin/snakes_and_ladders/blob/master/docs/FLOW%20DIAGRAM.jpg "FLOW CHART")







