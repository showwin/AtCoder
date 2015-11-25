# できていない
n, m = gets.split.map(&:to_i)
info = []
m.times do |i|
  info[i] = gets.split.map(&:to_i)
end

dist = Hash.new
info.each do |i|
  a, b, t = i
  from = [a, b].min
  to = [a, b].max
  dist[a] ||= {}
  dist[a][b] = t
end

# s_dist は 1 からの距離だから、3-4 を求めるときには、4-1 から 3-1 を引く
s_dist = Array.new(n+1, 1001)
s_dist[0], s_dist[1] = 0, 0
from = 1
fin = [0]
n.times do |i|
  p from
  dist[from].each do |to, t|
    s_dist[to] = [s_dist[from] + t, s_dist[to]].min
    p s_dist
  end
  fin << from
  b = []
  tgt = (0..n).to_a - fin
  tgt.each do |t|
    b << s_dist[t]
  end
  min = b.min
  from = s_dist.index(min)
end

cand = []
1.upto(n) do |from|
  ary = []
  1.upto(n) do |to|
    ary << (s_dist[to] - s_dist[from]).abs
  end
  cand[from] = ary.max
end

cand.shift

puts cand.min
