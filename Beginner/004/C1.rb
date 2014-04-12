cnt = gets.to_i%30
c = (1..6).to_a
cnt.times do |i|
  j = i%5
  c[j],c[j+1] = c[j+1],c[j]
end
puts c*""