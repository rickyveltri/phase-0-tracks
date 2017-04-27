puts "RICKY'S INTERIOR DESIGN"

##### ###  DATA STRUCTURES  ### #####

  clients = []
  client_info = {}


##### ###  CLIENT DATA INPUT  ### #####

  puts "First name:"
  client_info[:name_first] = gets.chomp.to_s

  puts "Last name:"
  client_info[:name_last] = gets.chomp.to_s

  puts "Email address:"
  client_info[:email] = gets.chomp.to_s

  puts "Number of children:"
  client_info[:children] = gets.chomp.to_i

  puts "Number of rooms to design:"
  client_info[:rooms] = gets.chomp.to_i


##### ###  CONFIRM DATA  ### #####
  puts client_info
  puts "Review the client data above. Type in a field name to modify, or 'done' to complete"
  field_to_update = gets.chomp.to_s
  if field_to_update == 'done'
  else
    field_to_update.to_sym
    puts "Change #{field_to_update} to:"
    new_field_value = gets.chomp
    client_info[field_to_update.to_sym] = new_field_value
  end

  # prompt: save
  puts "Save client to client list? (Y/N)"
  save_input = gets.chomp.to_s


##### ###  PUSH TO CLIENT LIST  ### #####
  save = true

  if save_input.downcase == "y" || save_input.downcase == "yes"
    save = true
  else
    save = false
  end

  if save
    clients.push(client_info)
  end


##### ###  PRINT CLIENT LIST  ### #####
puts clients