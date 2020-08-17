require './player'
# require './question'
#import player, question

class Game
  attr_accessor :player1, :player2

  def initialize
    puts "Player 1: Enter your name > "
    @player1 = Player.new(gets.chomp)
    puts @player1.name

    puts "Player 2: Enter your name > "
    @player2 = Player.new(gets.chomp)
    puts @player2.name
  end

  # relevant information
  # ----> player1, player 2, current_player, score, turn

  # current_player is instance variable
  # reassign current player to other player, toggle

  # methods
  # -------> show score, user input to answer question
  # -----> start game, manage turns => game loop, print scores
  #

  # user input to start the game
end



