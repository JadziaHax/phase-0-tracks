def print_x
  puts "printing before yield"
  yield(3)
  puts "printing after yield"
end

print_x { |x| puts x*3}

names = ["nanu", "jadzia", "mark", "steve", "kobe"]
weather = {
  Monday:"sunny",
  Tuesday:"cloudy",
  Wednesday:"Windy",
  Thursday:"Rainy",
  Friday:"Foggy"
}

puts "Original data:"
p names

names.each do |name|
  puts "your name is #{name}"
end

puts "after .each call:"
p names

puts "original data:"
p weather

weather.each do |day, daily_weather|
  puts "On #{day} the weather was #{daily_weather}"
end

puts "after .each call:"
p weather

puts "original data:"
p names

names.map! do |name|
  name.upcase
end

puts "after .map call"
p names

#RELEASE 2
# deleting any that meets condition
numbers = [3, 5, 7, 9, 11, 13]
puts "before deletion"
p numbers

new_num = numbers.delete_if { |numbers| numbers < 11}
puts "after deletion"
p new_num

# filter any that meets condition
numbers = [3, 5, 7, 9, 11, 13]
puts "before deletion"
p numbers

new_num = numbers.keep_if { |numbers| numbers < 11}
puts "after deletion"
p new_num

# another way of filtering for specific data
numbers = [3, 5, 7, 9, 11, 13]
puts "before"
p numbers

numbers.select! { |numbers| numbers > 5}
puts "after .select! method"
p numbers

# method to removie items from data stuctures until condition is method
even_nums = [2, 4, 6, 8, 10, 12]
puts "before"
p even_nums

puts "after using drop.while"
p even_nums.drop_while {|i| i < 8}
