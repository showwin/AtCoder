xa,ya, xb,yb, xc,yc = gets.chomp.split(" ").map{|str| str.to_i}
a = (xb-xa)
b = (yb-ya)
c = (xc-xa)
d = (yc-ya)
puts ((a*d-b*c)*0.500).abs