class Question
  attr_accessor :player, :player_answer, :correct_answer

  def initialize(player)
    n1 = rand(20)
    n2 = rand(20)
    answer = n1 + n2
    @correct_answer = false

    puts "#{player}! What's #{n1} + #{n2}?"
    player_answer = gets.chomp.to_i

    if player_answer == answer
      self.right(player)
    else
      self.wrong(player)
    end

  end

  def right(player)
    @right_answer = ["Math LORD +1 life", "OK genius!!! +1 life", "You're a wizard! +1 life"].shuffle
    @correct_answer = true
    puts @right_answer.first
  end

  def wrong(player)
    @wrong_answer = ["Sorry, no... -1 life", "WRONG -1 life", "Yikes! -1 life"].shuffle
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