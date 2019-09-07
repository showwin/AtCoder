# not pass
n = gets.chomp.to_i
str = Array.new(n-1)
dist = Array.new(n+1)
(n-1).times do |i|
  x,y = gets.chomp.split.map(&:to_i)
  x > y ? str[i] = [y,x] : str[i] = [x,y]
end
str.sort!
(n+1).times do |i|
  dist[i] = [0,0]
end
str.each do |x, y|
  dist[y][0] = dist[x][1] + 1
  dist[y][1] = x
end
b_str = []
q = gets.chomp.to_i
q.times do |j|
  b_str[j] = gets.chomp.split.map(&:to_i)
end

b_str.each do |x, y|
  length = 1
  diff = 0
  prnt = 0
  x_flg = false
  if dist[x][0] > dist[y][0]
    diff = dist[x][0] - dist[y][0]
    prnt = dist[x][1]
    x_flg = true
  elsif dist[x][0] == dist[y][0]
    diff = 0
    prnt = y
  else
    diff = dist[y][0] - dist[x][0]
    prnt = dist[y][1]
  end
  length += diff
  (diff - 1).times do |i|
    prnt = dist[prnt][1]
  end
  if x_flg
    x_prnt = dist[prnt][1]
    y_prnt = dist[y][1]
  else
    x_prnt = dist[x][1]
    y_prnt = dist[prnt][1]
  end
  while x_prnt != y_prnt
    x_prnt = dist[x_prnt][1]
    y_prnt = dist[y_prnt][1]
    length += 2
  end
  p (x == 1 || y == 1) ? length : length + 2
end
