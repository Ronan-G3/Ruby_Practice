def charades(att1, att2, att3)
  if att1 == "green" && att2 == "tall" && att3 == "woody"
    then puts "Is it a tree?"
  elsif att1 == "green" && att2 == "tall" && !(att3 == "woody")
    then puts "Is it a big green thing?"
  elsif (att1 == "green" || att1 == "red") && (att2 == "tall")
    then puts "is it a green traffic light?"
  elsif att1 == "green" || att2 == "tall" || att3 == "woody"
    then puts "Is it a green plant?"
  else puts "Haven't a clue..."
  end
end

puts "Running Charades..."
p charades("green", "tall", "woody")
p charades("green", "round", "plasticky")
p charades("red", "round", "woody")
p charades("green", "tall", "stoney")