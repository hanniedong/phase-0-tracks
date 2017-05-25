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