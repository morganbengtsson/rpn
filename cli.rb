puts "Welcome to the Reverse polish notation calculator. Enter the number of 
expressions you want to solve, followed by one expression per row:"
num_expressions = gets.chomp.to_i
expressions = []

num_expressions.times do  
  expression = gets.chomp    
  result = exec('python calculator.py "' + expression + '"')
end
