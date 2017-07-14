puts "Welcome to the Reverse polish notation calculator. Enter the number of 
expressions you want to solve, followed by one expression per row:"
num_expressions = gets.chomp.to_i
expressions = []

num_expressions.times do  
  expression = gets.chomp    
  #result = exec('go run logger.go "' + expression + '"')
  #puts "hej"
  puts `go run logger.go "10 2 *"`
end
