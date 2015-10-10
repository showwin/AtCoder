n = gets.chomp.to_i
sum = 0
result = 'WANWAN'
(n+1).times do |i|
  sum += i
end

sum_sqrt = Math.sqrt(sum)
2.upto(sum_sqrt) do |i|
  if sum % i == 0
    result = 'BOWWOW'
  end
end

result = 'BOWWOW' if sum == 1

puts result
