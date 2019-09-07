n, m = gets.chomp.split(" ").map { |s| s.to_i }
routes = []
m.times do |i|
  a, b = gets.chomp.split(" ").map { |s| s.to_i }
  routes << [a, b]
end
n.times do |j|
  routes << [j+1, j+1]
end

group = []
no = 0
routes.each do |route|
  flg = false
  group.each do |g|
    if g.include?(route[0]) || g.include?(route[1])
      g << route[1]
      g << route[0]
      g.uniq!
      flg = true
      break
    end
  end
  if !flg
    group[no] = []
    group[no] << route[0]
    group[no] << route[1]
    no += 1
  end
  group.sort! {|x,y| x.size <=> y.size }
end

puts group.size - 1
