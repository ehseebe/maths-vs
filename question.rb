class Question
  attr_accessor :player, :player_answer, :correct_answer

  def initialize(player)
    n1 = rand(20)
    n2 = rand(20)
    answer = n1 + n2
    @correct_answer = false
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