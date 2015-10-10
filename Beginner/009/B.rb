n = gets.to_i
prices = []
n.times do |i|
  price = gets.to_i
  prices << price
end
prices.delete(prices.max)
puts prices.max
