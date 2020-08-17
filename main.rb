require './game'

begin
  puts "LET'S PLAY >>> MATHS VS <<<"
  puts "Type 'n' for a new game \nType 'q' to quit "

  if gets.chomp = 'n'
    game = Game.new
  else
    puts "Until next time!"
    exit
  end

rescue Exception => e
  puts "Until next time!"
  exit
end