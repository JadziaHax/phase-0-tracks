=begin 

accept input for string to be encrypted
determine character length of string
set current letter to index
begin loop
  process current letter in string
    store the next method of the current letter in a new variable
    add that new variable to itself
  increase current letter count by 1
end loop

accept input for string to be decrypted
determine character length of string
set current letter to index
begin loop
  process current letter in string
    get the current letter
    determine the current letter's index in the alphabet
    subtract 1 from the current letter's index in the alphabet
    determine the letter at the index of the number derived in the previous step
    add that letter to the output variable



=end

def encrypt(string)
  current_character = 0
  encrypted_output = ""
  until current_character == string.length
    check = string[current_character].next
    if check == "aa"
      encrypted_output += "a"
    else encrypted_output += string[current_character].next
    end
    current_character += 1
  end
  puts encrypted_output
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  current_character = 0
  decrypted_output = ""
  until current_character == string.length
    reverse = string[current_character]
    character_index = alphabet.index(reverse)
    previous_character = character_index - 1
    decrypted_output += alphabet[previous_character]
    current_character += 1
  end
  puts decrypted_output
end

puts "Please provide the phrase to encode or decode"
  phrase = gets.chomp.downcase
  done = 0
until done == 1
  puts "Please specify whether you wish to encrypt or decrypt"
    action = gets.chomp.downcase
  if action == "encrypt"
    encrypt(phrase)
    done = 1
    elsif action == "decrypt"
    decrypt(phrase)
    done = 1
    else puts "please specify a valid option (encrypt/decrypt)"
  end
end

=begin
encrypt "abc"
encrypt "zed"
decrypt "bcd"
decrypt "afe"
decrypt encrypt("swordfish") #this didn't work?
=end