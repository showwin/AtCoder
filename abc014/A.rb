a = gets.chomp.to_i
b = gets.chomp.to_i
p a % b == 0 ? 0 : b - a % b
