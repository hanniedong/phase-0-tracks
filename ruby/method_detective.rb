# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
"iNvEsTiGaTiOn".replace “InVeStIgAtIoN”
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
"zom".replace "zoom"
"zom".gsub(/[o]/, 'oo')  
# => “zoom”

"enhance".center(14)
"enhance".replace "    enhance    "
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".replace "STOP! YOU’RE UNDER ARREST!"
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
"the usual".replace "the usual suspects"
"the usual".insert(-1, ' suspects')
#=> "the usual suspects"

# " suspects".<???>
" suspects".replace "the usual suspects"
" suspects".insert(0, 'the usual')
"suspects".prepend('the usual ')
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".replace "The case of the disappearing last lette"
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice!(2..39)
"The mystery of the missing first letter".replace "he mystery of the missing first letter"
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
"Elementary,    my   dear        Watson!".replace "Elementary, my dear Watson!"
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It is the integer ordinal 

"How many times does the letter 'a' appear in this string?".count "a"
# => 4

#miscellaneous tests

"What happened?".chop
# => "What happened"

"was them!".prepend('It ')
# => "It was them!"

"AHHHH".slice!(1..3)
# => "HHH"

"a".ord
# => 97

"way".insert(0, "No ")
# => No way 

"BbBbBbrRR".swapcase
# => "bBbBbBRrr"

"It was Dev".replace "It was DevBootcamp!"
# => "It was DevBootcamp!"

"I knew it!".upcase
# => "I KNEW IT!"
