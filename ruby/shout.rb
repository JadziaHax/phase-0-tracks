=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

p Shout.yell_angrily("HELP")
p Shout.yelling_happily("HELP")
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Ex
  include Shout
end

class Fan
  include Shout
end

ex = Ex.new
p ex.yell_angrily("Why")
p ex.yelling_happily("Okay")

fan = Fan.new
p fan.yelling_happily("Go")
p fan.yell_angrily("Boo")