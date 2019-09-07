n, x = gets.chomp.split.map(&:to_i)
vals = gets.chomp.split.map(&:to_i)
bi =  format("%0#{n}d", x.to_s(2))
sum = 0
i = 0
bi.each_char do |c|
  sum += vals[n-i-1] if c == '1'
  i += 1
end
p sum
