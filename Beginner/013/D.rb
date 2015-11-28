n, m, d = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
f = []

0.upto(n) do |i|
  f[i] = i
end

as.each do |a|
  tmp = f[a]
  f[a] = f[a+1]
  f[a+1] = tmp
end

lp = nil
1.upto(n) do |i|
  ans = i
  d.times do |t|
    ans = f.index(ans)
    if ans == i && t != 0
      lp = t + 1
      break
    end
  end
  break
end

if lp.nil?
  lp_n = d
else
  lp_n = d % lp
end

1.upto(n) do |i|
  ans = i
  lp_n.times do
    ans = f.index(ans)
  end
  puts ans
end
