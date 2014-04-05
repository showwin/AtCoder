deg,dis = gets.chomp.split(" ").map{|s| s.to_i}

case (dis+3)/6
when 0..2
  w = 0
when 3..15
  w = 1
when 16..33
  w = 2
when 34..54
  w = 3
when 55..79
  w = 4
when 80..107
  w = 5
when 108..138
  w = 6
when 139..171
  w = 7
when 172..207
  w = 8
when 208..244
  w = 9
when 245..284
  w = 10
when 285..326
  w = 11
else
  w = 12
end

dir_ary=['N','NNE','NE','ENE','E','ESE','SE','SSE','S','SSW','SW','WSW','W','WNW','NW','NNW']

dir = nil
if w == 0 
  dir = 'C'
else
  for i in 1..15 do
    if 112.5+225*(i-1) < deg && deg < 112.5+225*i
      dir = dir_ary[i]
      break
    end
  end
  dir = 'N' if !dir
end

print "#{dir} #{w}\n"