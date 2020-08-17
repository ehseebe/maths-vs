require './player'
require './question'
#import player, question

class Game
  attr_accessor :player1, :player2, :lives, :correct_answer

  def initialize
    puts "Player 1: Enter your name >> "
    @player1 = Player.new(gets.chomp)

    puts "Player 2: Enter your name >> "
    @player2 = Player.new(gets.chomp)

    while @player1.lives > 0 && @player2.lives > 0

      player = [@player1, @player2]

      Question.new(player.first.name)

      if correct_answer == true
        player.first.win_life
        puts "---> #{@player1.name}: #{@player1.lives} lives\n---> #{@player2.name}: #{@player2.lives} lives"
      else
        player.first.lose_life
        puts "---> #{@player1.name}: #{@player1.lives} lives\n---> #{@player2.name}: #{@player2.lives} lives"
      end

    end
  end

  # relevant information
  # ----> player1, player 2, current_player, score, turn

  # current_player is instance variable
  # reassign current player to other player, toggle

  # methods
  # -------> show score, user input to answer question
  # -----> start game, manage turns => game loop, print scores
  #

  
end


