n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end
arr.sort!
puts arr[0]
