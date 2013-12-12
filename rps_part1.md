# Rock, Paper, Scissors - Part 1

## Objectives
*   Create a route in Sinatra using a parameter
*   Use a before filter
*   Validate parameters and respond appropriately

## Reading
http://www.sinatrarb.com/intro.html#Routes

## Instructions 

### Scaffold your app
#### Create your ruby app file
1.   Create a folder called `rock_paper_scissor`
2.   Create a file called `game.rb`
3.   In this file, require Sinatra
4.   Create a `Game` module to wrap your app in.
5.   Inside the `Game` module, create a `RPS_App` class that extends `Sinatra::Application`

#### Create your rack file
1.   Create a file called `config.ru`
2.   Inside `config.ru` require game
3.   Then call a run to your app (don't forget that it is wrapped in a module!) 
 
### Create the game
Our app will be played at the path `/throw`. To play, a user will hit `/throw/:type`, for example: `/throw/rock` will play rock.

1.  Define a route at `/throw` that responds to a get request and takes a single parameter called `:type`
2.  This route should randomly generate a move by the computer.
3.  The computer move and user move should be compared.
4.  The results of the match should be displayed on the page.
5.  

### Extensions
1.  Create an error if the user tries to throw an incorrect move.
2.  Extend the game to include a new move, see [RPS Variations](http://en.wikipedia.org/wiki/Rock-paper-scissors#Variations).
3.  Creating a landing page with links, so one does not need to edit the URL in the browser.
3.  Make it look pretty!

