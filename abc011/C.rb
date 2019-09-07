n = gets.to_i
ngs = []
3.times do |i|
  ngs[i] = gets.to_i
end

flg = false
flg = true if ngs.include?(n)

incs = [1, 2, 3]
count = 0
a = 0
new_a = 0
while a < (n - 3)
  incs.each do |i|
    next if ngs.include?(a + i)
    new_a = a + i
  end

  count += 1
  if new_a == a || count == 100
    flg = true
    break
  end
  # p "#{a}, #{new_a}, #{flg}, #{count}"
  a = new_a
end

puts flg ? 'NO' : 'YES'
