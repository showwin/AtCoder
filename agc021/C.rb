k = gets.to_i
n = gets.to_i
a = []
d = []
n.times do |i|
  a[i],d[i] = gets.split(" ").map{|str| str.to_i}
end
index = 0
result = 0
k.times do
  result += a.min
  a.size.times do |i|
    if a[i] == a.min
      index = i
      break
    end
  end
  a[index] += d[index]
end
puts result