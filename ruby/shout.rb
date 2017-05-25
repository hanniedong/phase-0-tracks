#RELEASE 1

=begin
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
=end

#RELEASE 3
module Shout
	def yell_angry(words)
		puts words + "!!!" + " :("
	end
end

class Teacher
	include Shout
end

class Mom
	include Shout
end

history_teacher = Teacher.new
history_teacher.yell_angry("Where is your homework")

daniels_mom = Mom.new
daniels_mom.yell_angry("Clean your room")


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