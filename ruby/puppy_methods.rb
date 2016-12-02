class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

maggie = Puppy.new
maggie.fetch("rope")