# Required: Client's...
#name, age, number of children, decor theme, and so on
# mixed data: string, integer, and boolean
puts "Ricky's Interior Design:  Client List"



clients = []

client_info = {
  name:  "",
  email:  "",
  kids:  false,
  themes:  "nil",
  rooms:  0,
}

#logic
puts "Name":
client_info[:name] = gets.chomp.to_s

puts "Email address":
client_info[:email] = gets.chomp.to_s

puts "Do you have children? (0 for no, 1 for yes)":
client_info[:kids] = gets.chomp.to_



puts "Save client info? (Y/N)"
answer = gets.chomp
if answer.upcase == "Y" || answer.upcase == "YES"
  clients.push(client_info)
  elsif
  answer.upcase == "N" || answer.upcase == "NO"
  break
else
  puts "Enter 'Y' or 'N'"
end


#ux prompt user for info

#convert user data to proper data type


#print hash after questions