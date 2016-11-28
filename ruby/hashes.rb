client = {}

puts "Please enter client's name."
  client[:name] = gets.chomp

puts "Please enter client's age."
  client[:age] = gets.chomp.to_i

puts "Please enter client's number of children."
  client[:num_children] = gets.chomp.to_i

puts "Please enter client's decor theme."
  client[:decor_theme] = gets.chomp

in_state_done = false

until in_state_done == true
  puts "Is in state? (y/n)"
  in_state = gets.chomp.downcase
  
    if in_state == "y"
      client[:in_state] = true
      in_state_done = true
    elsif in_state == "n"
      client[:in_state] = false
      in_state_done = true
    else
      puts "please provide valid input"
    end
end

p client

puts "What client data would you like to update?"
  update_response = gets.chomp.downcase
  
  if update_response == "name"
    puts "Please enter client's name"
      client[:name] = gets.chomp
      
  elsif update_response == "age"
    puts "Please enter client's age."
      client[:age] = gets.chomp.to_i
      
  elsif update_response == "num_children"
    puts "Please enter client's number of children."
      client[:num_children] = gets.chomp.to_i
      
  elsif update_response == "decor_theme"
    puts "Please enter client's decor theme."
      client[:decor_theme] = gets.chomp
      
  elsif update_response == "in_state"
    in_state_done = false
    
    until in_state_done == true
      puts "Is in state? (y/n)"
      in_state = gets.chomp.downcase
      
        if in_state == "y"
          client[:in_state] = true
          in_state_done = true
        elsif in_state == "n"
          client[:in_state] = false
          in_state_done = true
        else
          puts "please provide valid input"
        end
    end
  else
  end

p client