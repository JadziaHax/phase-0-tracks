class Santa
  attr_reader :ethnicity, :age, :reindeer_ranking
  attr_accessor :gender

  def initialize(gender, ethnicity)
    p "initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    if @reindeer_ranking.include?(reindeer) == true
      @reindeer_ranking.delete(reindeer)
      @reindeer_ranking << reindeer
      nil
    else
      puts "This santa doesn't know that reindeer."
    end
  end

=begin
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender
    @gender
  end

  def gender=(new_gender)
    @gender = new_gender
  end
=end

end

=begin
kringle = Santa.new("", "")
kringle.speak
kringle.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
7.times do |x|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end


kringle.get_mad_at("Prancer")
kringle.celebrate_birthday
p kringle.age
p kringle.ethnicity
kringle.gender = "non-binary"
=end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10000.times do
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  140.times do
    santa.celebrate_birthday
  end
p "This santa is #{santa.age} years old. Their ethnicity is #{santa.ethnicity} and their gender is #{santa.gender}. They rank the reindeer thusly: #{santa.reindeer_ranking}."
end