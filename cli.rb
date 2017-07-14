puts "Welcome to the Reverse Polish notation Calculator. Enter the number of 
expressions you want to solve, followed by one expression per row:"
num_expressions = gets.chomp.to_i
expressions = []

num_expressions.times do
  expressions.push(gets.chomp)
end
