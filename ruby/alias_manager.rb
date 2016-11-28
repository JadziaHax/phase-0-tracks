def fake_name (string)
  
  name_array = string.downcase.split(' ')
  
  name_array.reverse!
  
  reversed_name = name_array.join(" ")
  
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  
  current_character_index = 0
  encrypted_output = ""
  until current_character_index == reversed_name.length
  
    if reversed_name[current_character_index] == " "
      encrypted_output += reversed_name[current_character_index]
      
    elsif vowels.include?(reversed_name[current_character_index])
      step_character_index = vowels.index(reversed_name[current_character_index])
      next_character_index = step_character_index + 1

      if next_character_index == 5
        new_character = "a"
      else
        new_character = vowels[next_character_index]
      end
      
      encrypted_output += new_character

    else consonants.include?(reversed_name[current_character_index])
      step_character_index = consonants.index(reversed_name[current_character_index])
      next_character_index = step_character_index + 1
      
      if next_character_index == 21
        new_character = "b"
      else
        new_character = consonants[next_character_index]
      end
      
      encrypted_output += new_character
    end
    
    current_character_index += 1
  end
  capitalization_array = encrypted_output.split(' ')
  capitalization_array.map! do |x|
    x = x.capitalize!
    end
  encrypted_output = capitalization_array.join(" ")
end

#fake_name "Madelyn Thomas"

done = false 

names_faked = {}

until done == true 
  puts "Enter name to fake"
    provided_name = gets.chomp
    
  if provided_name == "Quit"
    done = true
    
  elsif provided_name == "quit"
    done = true
  else
  names_faked[provided_name.to_sym] = fake_name(provided_name)
  end
end
  
  names_faked.each do |x, y|
  p "#{y} is actually #{x}"
  end