puts "Welcome to the Reverse polish notation calculator. Enter the number of 
expressions you want to solve, followed by one expression per row:"

num_expressions = gets.chomp.to_i
expressions = []

num_expressions.times do  
  expression = gets.chomp    
  t0 = Time.now
  #result = exec('go run logger.go "' + expression + '"')
  result = `go run logger.go "#{expression}"`  
  t1 = Time.now
  delta = t1 - t0
  puts result.delete!("\n") + ", " + delta.to_s
end
