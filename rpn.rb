#!/usr/bin/env ruby

puts "Welcome to the Reverse polish notation calculator. Enter the number of 
expressions you want to solve, followed by one expression per row:"

num_expressions = gets.chomp.to_i
expressions = []

num_expressions.times do
  expressions.push(gets.chomp)
end

expressions.each do |expression|
  t0 = Time.now
  result = `./logger "#{expression}"`
  delta = Time.now - t0
  puts result.delete!("\n") + ", " + delta.round(3).to_s
end 

