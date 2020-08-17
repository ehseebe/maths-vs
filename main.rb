require './game'

begin

  puts "LET'S PLAY >>> MATHS VS <<<"
  puts "Press any key to continue "

  if gets.chomp
    game = Game.new
  # else
  #   puts "Until next time!"
  #   exit
  end

# rescue Exception => e
#   puts "Until next time!"
#   exit

end