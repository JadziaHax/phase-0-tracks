puts "Enter Hamster name "
name=gets.chomp

puts "Enter volume level(1-10;10 being loudest)"
volume=gets.chomp
volume=volume.to_i

puts "Enter fur color"
fur_color=gets.chomp

puts "Good for adoption(y/n)"
adoption=gets.chomp

if adoption="y"
  adoption=true
else 
  adoption=false
end


puts "Estimated age"
age=gets.chomp

if age.empty?
  age=nil
else
  age=age.to_i
end

puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Fur color: #{fur_color}"
puts "Good for adoption: #{adoption}"
puts "Age: #{age}"

