#DATA COLLECTION

puts 'What is your name?'
name = gets.chomp

puts 'How old are you?'
age = gets.chomp.to_i

puts 'In what year were you born?'
birth_year = gets.chomp.to_i

puts 'Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)'
garlic_bread = gets.chomp

puts 'Would you like to enroll in the company’s health insurance? (yes/no)'
health_insurance = gets.chomp



# DATA EVALUATION

#age evaluation
calculated_age = Time.new.year - birth_year
age_correct = calculated_age == age

# name evaluation, which trumps all conditions
if name == 'Drake Cula' || name == 'Tu Fang'
  puts 'Definitely a vampire.'
  #age correct and yes to either garlic bread or health insurance
  elsif age_correct && (garlic_bread == 'yes' || health_insurance == 'yes')
  puts 'Probably not a vampire.'
  #age incorrect and no to both garlic bread and health insurance
  elsif !age_correct && garlic_bread == 'no' && health_insurance == 'no'
  puts 'Almost certainly a vampire'
  #age incorrect and declined either garlic bread or health insurance
  elsif !age_correct && (garlic_bread == 'no' || health_insurance == 'no')
  puts 'Probably a vampire.'
else
  puts 'Results inconclusive'
end

