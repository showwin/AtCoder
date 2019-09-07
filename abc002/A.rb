x,y = gets.chomp.split(" ").map{|str| str.to_i }
if x > y 
  print "#{x}\n"
else 
  print "#{y}\n"
end