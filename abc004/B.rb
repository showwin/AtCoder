r=[]
4.times do |i|
  r[15-i*4],r[14-i*4],r[13-i*4],r[12-i*4] = gets.chomp.split(" ")
end
4.times do |j|
  print "#{r[j*4]} #{r[j*4+1]} #{r[j*4+2]} #{r[j*4+3]}\n"
end
