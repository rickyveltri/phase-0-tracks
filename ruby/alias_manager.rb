##### ##  INSTRUCTIONS  ## #####

=begin

Define a method that...
1. Swaps the first and last name
2. Advances letters by one
-- Vowels: change to next vowel in 'aeiou' series
-- Consonants: change to next consonant

Additional Considerations...
-- Capitalize first letter
-- Edge cases:  z=>b ; u=>a

=end


def create_alias(full_name)


### # Standardize Format # ###

  # letters to downcase=>  'First Name' => 'first name'
  full_name = full_name.downcase

  #split names=>  'first last' => ['first', 'last']
  name_array = full_name.split(" ")

  #switch order of names=>  [first, last] => [last, first]
  name_array = name_array.reverse

  #split individual characters [last, first] => [['l', 'a', 's', 't'], ['f','i','r','s','t']]:
  name_array.map! {|x| x.chars}

  #re-join, leaving spaces between
  new_name = name_array[0].join() + " " + name_array[1].join()
  #=> "veltri ricky"


### #  Loop + Logic  # ###

  #set variables
  vowel_list = ['a', 'e', 'i', 'o', 'u']
  consonant_list = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  i = 0

  #initiate while loop
  while i < new_name.length

    #create variable to hold character (for code clarity)
    char = new_name[i]

    #edge cases
    if char == 'z'
      new_name[i] = 'b'
      i += 1
    elsif char == 'u'
      new_name[i] = 'a'
      i += 1
    elsif char == " "
      i += 1

    # char == consonant?
    elsif consonant_list.index(char) != nil
      new_index = consonant_list.index(char) + 1
      new_name[i] = consonant_list[new_index]
      i += 1

    #char == vowel?
    elsif vowel_list.index(char) != nil
      new_index = vowel_list.index(char) + 1
      new_name[i] = vowel_list[new_index]
      i += 1

    # number, or unidentified character
    else
      new_name[i] = new_name[i].next
      i += 1
    end
  end

  #reformat: upcase first letter
  new_name = new_name.split.map(&:capitalize).join(' ')  #reformat, upcase first letter
end




##### ##  RELEASE 1:  UX   /  RELEASE 2: Store Aliases ## #####

puts "ALIAS CREATION TOOL"
puts "Enter name(s), or type 'quit':"
user_input = gets.chomp.to_s
alias_list =[]

while user_input != 'quit'
  p user_alias = create_alias(user_input)
  alias_list.push("#{user_alias} is actually #{user_input}")
  user_input = gets.chomp.to_s
end

puts alias_list

