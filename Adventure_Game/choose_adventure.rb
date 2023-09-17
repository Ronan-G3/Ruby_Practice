def start_game
  puts "You're at a crossroad. Where do you want to go? [North, South]"
  direction = gets.chomp.downcase

  if direction == "north"
    go_north
  elsif direction == "south"
    go_south
  else
    puts "Invalid choice. The game is over."
  end
end

def go_north
  puts "You've reached a castle. Do you want to enter or go back? [Enter, Back]"
  decision = gets.chomp.downcase

  if decision == "enter"
    puts "Congratulations! You've found a treasure!"
  elsif decision == "back"
    start_game
  else
    puts "Invalid choice. The game is over."
  end
end

def go_south
  puts "You've reached a river. Do you want to swim across or go back? [Swim, Back]"
  decision = gets.chomp.downcase

  if decision == "swim"
    puts "Sorry, you got eaten by a crocodile."
  elsif decision == "back"
    start_game
  else
    puts "Invalid choice. The game is over."
  end
end

# Start the game
start_game