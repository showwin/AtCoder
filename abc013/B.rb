a = gets.to_i
b = gets.to_i

puts [(a-b).abs, (a+10-b).abs, (a-10-b).abs].min
