n = gets.chomp.to_i
str = Array.new(1000003, 0)
rst = Array.new(1000003, 0)
n.times do |i|
  s,e = gets.chomp.split.map(&:to_i)
  str[s+1] += 1
  str[e+2] += -1
end
1000002.times do |i|
  j = i + 1
  rst[i] = rst[i-1] + str[i]
end
p rst[rst.index(rst[1..1000001].max)]
