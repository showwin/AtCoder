n,k = gets.chomp.split(" ").map{|str| str.to_i}
r = gets.split.map{|str| str.to_i}
r.sort!
rate = 0
k.times do |i|
  rate = (rate+r[n-k+i])/2.000000
end
puts rate
    