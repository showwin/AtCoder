txa, tya, txb, tyb, t, v = gets.chomp.split(" ").map { |s| s.to_i }
n = gets.chomp.to_i

ml = t*v
houses = []
result = "NO"

n.times do |i|
  x,y = gets.chomp.split(" ").map { |s| s.to_i }
  houses << [x, y]
end

houses.each do |house|
  l1 = Math.sqrt((house[0] - txa)**2 + (house[1] - tya)**2)
  l2 = Math.sqrt((house[0] - txb)**2 + (house[1] - tyb)**2)
  if (l1+l2) <= ml
    result = "YES"
    break
  end
end

puts result
