# Excercise 8
# 
# Same as Excercise 7 but with parameters.

def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end
  
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}
