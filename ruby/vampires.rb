#DATA COLLECTION

puts "What is your name?"
name = gets.chomp


puts "How old are you?"
age = gets.chomp.to_i


puts "What year were you born?"
birth_year = gets.chomp.to_i


calculated_age = Time.new.year - birth_year
age_correct = calculated_age == age
puts age_correct


puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp


puts "Would you like to enroll in the company’s health insurance?"
health_insurance = gets.chomp





=begin
DATA EVALUATION
If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”
=end

#age correct and willing to eat garlic or sign up for insurance

#name evaluation
if name == 'Drake Cula' || name == 'Tu Fang'
  name_eval = 'Definitely a vampire.'
end
puts name_eval



