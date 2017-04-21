def encrypt (word)
    counter = 0
    code = []
    while counter < word.length
        if word [counter] == "z"
            code [counter] = "a"
        else
            code[counter] = word[counter].next
        end
        counter += 1
    end
    code.join
end


def decrypt (word)
 counter = 0
 code = []
 while counter < word.length
   if word [counter] == "a"
     code [counter] = "z"
   else
     code[counter] = (word[counter].ord - 1).chr
   end
   counter += 1
 end
 code.join
end

#Check to see if encrypted word will be decrypted correctly by using decrypt(encrypt("swordfish")), changing the word between the "" to the word you're attempting to encrypt.

=begin

- Ask user with prompt if they would like to encrypt or decrypt a password.
- Ask them for the password.
- Print result to screen.
- Exit

=end

puts "Do you want to encrypt or decrypt a password? Enter 1 for encrypt and 2 for decrypt."

answer = gets.chomp.to_i

if answer == 1
 puts "What is the password?"
 password = gets.chomp
 puts "The encrypted version is #{encrypt(password)}."
elsif answer == 2
 puts "What is the password?"
 password = gets.chomp
 puts "The decrypted version is #{decrypt(password)}."
else
 puts "Please enter a valid password."
end