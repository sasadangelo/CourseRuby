# Excercise 6
# 
# In this method we define block of code in Ruby.
# They are like function but defined outside class scope.
# yield executes the code passed in input.

def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }
