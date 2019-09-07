a=[]
4.times do |i|
  a[i]=gets.split(" ").map{|str| str.to_i}
end
flg = false
4.times do |j|
  3.times do |k|
    flg = true if a[j][k] == a[j][k+1]
  end
end
3.times do |l|
  4.times do |m|
    flg = true if a[l][m] == a[l+1][m]
  end
end
if flg
  print "CONTINUE\n"
else
  print "GAMEOVER\n"
end