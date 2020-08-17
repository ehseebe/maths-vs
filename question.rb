class Question
  attr_accessor :player, :player_answer, :right_answer

  def initialize(player)
    n1 = rand(20)
    n2 = rand(20)
    answer = n1 + n2

    puts "#{player}! What's #{n1} + #{n2}?"
    player_answer = gets.chomp.to_i

    if player_answer == answer
      right(player)
    else
      wrong(player)
    end

  end

  def right(player)
    @right_answer = ["Math LORD +1 pt", "OK genius!!! +1 pt", "You're a wizard! +1 pt"].shuffle
    puts @right_answer.first
  end

  def wrong(player)
    @wrong_answer = ["Sorry, no... -1 pt", "WRONG -1 pt", "Yikes! -1 pt"].shuffle
    puts @wrong_answer.first
  end

end

  # relevant information
  # --------> player_input, answer
  
  # questions = n1 = random, n2, answer = comparison done in game
  # answer = n1 + n2
  # @ need to be readable
  # compare value of answer and input

  # methods
  # -------> right answer, wrong answer

# 20 questions
# math addition problems
# randomize numbers to create questions