#RELEASE 1

module Shout
	def self.yell_angry(words)
		words + "!!!" + " :("
	end
	
	def self.yelling_happy(happy_words)
	  happy_words + "!!!" + " :) :) :)"
	end
end

p Shout.yell_angry("WHAT")
p Shout.yelling_happy("Yes!")

#RELEASE 2
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)