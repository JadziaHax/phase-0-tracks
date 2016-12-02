=begin
class Puppy
  attr_accessor :legs
  def initialize(leg_count)
    p "Initializing new puppy instance..."
    @breed = ["Wimaraner", "Dauchsund", "Lab"].sample
    @legs = leg_count
    @sex = ["male", "female"].sample
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
    until times == 0
      puts "Woof!"
      times -= 1
    end
  end

  def roll_over
    puts "roll_over"
  end

  def dog_years(int)
    p int * 7
  end

  def drink_water(int)
    p "slurp " * int
  end
end

maggie = Puppy.new(4)
maggie.fetch("rope")
maggie.speak(3)
maggie.roll_over
maggie.dog_years(3)
maggie.drink_water(9)
p maggie.legs
=end

class Lesbians_Who_Tech
  attr_reader :bootcamp, :location
  attr_accessor :les_name, :fav_person

  def initialize (les_name,bootcamp,location,fav_person)
    @les_name = les_name
    @bootcamp = bootcamp
    @location = location
    @fav_person = fav_person
  end

  def hoola_hoop(minutes)
    p "#{@les_name} spent #{minutes} minutes hoola_hooping with #{@fav_person}"
  end

  def drink(num)
    puts "drink then dance\n" * num
  end

  def new_favorite_person(fav_person)
    @fav_person = fav_person
    puts "After all that drinking, #{@les_name} has an new favorite person and it's #{@fav_person}"
  end
end

scholar = Lesbians_Who_Tech.new("Denise Duffy", "Dev Bootcamp", "SF", "Edie Windsor")

scholar.hoola_hoop(5)
scholar.drink(2)
p scholar.bootcamp
scholar.les_name = "Sarah"
p scholar.les_name
p scholar.fav_person

scholar.new_favorite_person("Notorious RGB")
p scholar.fav_person

les_name = ["Denise", "Melissa", "Jill"]
bootcamp = ["Dev Boot"]
location = ["SF", "Chicago", "Austin"]
fav_person = ["Edie Windsor", "Jill Scott", "Ashlyn Harris"]

les_hash = {}

50.times do |x|
  les_hash["ediewindsorscholar#{x}"] = Lesbians_Who_Tech.new(les_name.sample,bootcamp,location.sample,fav_person.sample)
end

#puts les_hash
#puts les_hash["ediewindsorscholar34"].inspect

=begin
les_hash.each do |scholar_num, scholar_info|
puts "#{scholar_num} ===> #{scholar_info}"
end
=end

les_hash.each do |scholar_num, scholar_info|
  scholar_info.hoola_hoop(2)
  scholar_info.drink(3)
end