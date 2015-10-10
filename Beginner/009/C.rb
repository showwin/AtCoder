n,k = gets.chomp.split(" ").map { |s| s.to_i }
s_o = gets.chomp
s_a = s_o.split("")

results = []
indexs = []
n.times do |i|
  indexs << i
end

cmb = indexs.combination(k).to_a
cmb.each do |is|
  tmp = s_a.clone
  a = []
  is.each do |i|
    a << s_a[i]
  end
  a.sort!
  is.each_with_index do |i, idx|
    tmp[i] = a[idx]
  end
  results << tmp.join
end

puts results.uniq.sort[0]
