require './player'
require './question'

class Game
  attr_accessor :player1, :player2, :lives, :correct_answer

  def initialize
    puts "Player 1: Enter your name >> "
    @player1 = Player.new(gets.chomp)

    puts "Player 2: Enter your name >> "
    @player2 = Player.new(gets.chomp)

    @players = [@player1, @player2].shuffle

    @question = 1
  end

  def game_over?
    @player1.lives <= 0 || @player2.lives <= 0
  end

  def next_question
    puts
    puts "Question ##{@question}"
    puts
    Question.new(@players.first)
    @question += 1
    @players.rotate!
  end

  def print_score
    puts "---> #{@player1.name}: #{@player1.lives} lives\n---> #{@player2.name}: #{@player2.lives} lives"
  end

  def play 
    until game_over? do
      next_question
      print_score
    end
  end
end


