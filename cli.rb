puts "Welcome to the Reverse polish notation calculator. Enter the number of 
expressions you want to solve, followed by one expression per row:"

num_expressions = gets.chomp.to_i
expressions = []

num_expressions.times do
  expressions.push(gets.chomp)
end

expressions.each do |expression|
  t0 = Time.now
  result = `go run logger.go "#{expression}"`
  delta = Time.now - t0
  puts result.delete!("\n") + ", " + delta.to_s
end 

