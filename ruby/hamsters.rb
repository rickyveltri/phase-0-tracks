puts "What is the hamster's name?"
hamsterName = gets.chomp

puts "On a scale from 1-10, how squeeky is the hamster?"
volLevel = gets.chomp.to_i

puts "What color is the hamster?"
furColor = gets.chomp

puts "Good candidate for adoption? Enter true or false"
candidate = gets.chomp.to_s
if candidate
  candidate = "Good"
else
  candidate = "Bad"
end

puts "Estimated age?"
age = nil
age = gets.chomp


puts "Name: #{hamsterName}"
puts "Volume Level: #{volLevel}"
puts "Fur Color: #{furColor}"
puts "#{candidate} candidate for adoption"
puts "Age: #{age}"