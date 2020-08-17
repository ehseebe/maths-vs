class Question
  def initialize(player)
    n1 = rand(20)
    n2 = rand(20)
    answer = n1 + n2
    @correct_answer = false
    @player = player

    puts "#{player.name}! What's #{n1} + #{n2}?"
    player_answer = gets.chomp.to_i

    if player_answer == answer
      right
    else
      wrong
    end

  end

  def right
    right_answer = ["Math LORD +1 life", "OK genius!!! +1 life", "You're a wizard! +1 life"].shuffle
    @correct_answer = true
    puts right_answer.first
  end

  def wrong
    wrong_answer = ["Sorry, no... -1 life", "WRONG -1 life", "Yikes! -1 life"].shuffle
    @correct_answer = false
    @player.lose_life
    puts wrong_answer.first
  end

end
