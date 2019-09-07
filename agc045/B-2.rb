n, m = gets.split.map(&:to_i)
list = []
m.times do |_|
  list << gets.split.map(&:to_i)
end
room = Array.new(n, -1)
list.each do |l|
  l[0].upto(l[1]) do |o|
    room[o-1] += 1
  end
end
result = []
list.each_with_index do |l, i|
  flg = true
  l[0].upto(l[1]) do |o|
    if room[o-1] < 1
      flg = false
      break
    end
  end
  result << i + 1 if flg
end

puts result.size
result.each do |r|
  puts r
end
