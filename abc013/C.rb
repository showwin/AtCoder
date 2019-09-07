n, h = gets.split.map(&:to_i)
a,b,c,d,e = gets.split.map(&:to_i)

# a を食べた回数 x
# c を食べた回数 y

# h + bx + dy - (n-x-y)e >= 1
# h + bx + dy - ne + xe + ye >= 1
# (b + e)x >= 1 - h - dy + ne - ye

cand = []
0.upto(n) do |y|
  x = ((1-h-d*y+n*e-y*e)/((b+e)*1.0)).ceil
  x = 0 if x < 0
  cand << a*x + c*y
end
puts cand.min
