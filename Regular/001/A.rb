n = gets.to_i
c = gets.split("").map{|str| str.to_i }
cnt = []
1.upto(4) do |ans|
  cnt[ans-1]=0
  n.times do |i|
    cnt[ans-1] += 1 if ans == c[i]
  end
end
print "#{cnt.max} #{cnt.min}\n"