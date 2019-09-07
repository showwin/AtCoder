r,g,b = gets.split(" ").map{|str| str.to_i }
count = 0
if r%2 == 1
  count += r-1
  count += 2*((0..(r-1)/2-1).to_a.reduce(0,:+))
else
  count += r-1
  count += (0..r/2-1).to_a.reduce(0,:+)
  count += (0..r/2-2).to_a.reduce(0,:+)
end
if g%2 == 1
  count += g-1
  count += 2*((0..(g-1)/2-1).to_a.reduce(0,:+))
else
  count += g-1
  count += (0..g/2-1).to_a.reduce(0,:+)
  count += (0..g/2-2).to_a.reduce(0,:+)
end
if b%2 == 1
  count += b-1
  count += 2*((0..(b-1)/2-1).to_a.reduce(0,:+))
else
  count += b-1
  count += (0..b/2-1).to_a.reduce(0,:+)
  count += (0..b/2-2).to_a.reduce(0,:+)
end

puts count