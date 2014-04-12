n = gets.to_i
c = [1,2,3,4,5,6]
cnt = n%30
cnt.times do |i|
  j = i%5
  temp = c[j]
  c[j] = c[j+1]
  c[j+1] = temp
end
print "#{c[0]}#{c[1]}#{c[2]}#{c[3]}#{c[4]}#{c[5]}\n"