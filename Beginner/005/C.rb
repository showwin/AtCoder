t = gets.to_i
n = gets.to_i
as_org = gets.split.map(&:to_i)
as = as_org.map { |a| a.to_i + t }
m = gets.to_i
bs = gets.split.map(&:to_i)
no_flg = false

t_j = 0
if n < m
  no_flg = true
else
  m.times do |i|
    while bs[i] > as[t_j] || bs[i] < as_org[t_j]
      t_j += 1
      if t_j >= as.size
        no_flg = true
        break
      end
    end
    break if no_flg
    t_j += 1
  end
end

if no_flg
  puts 'no'
else
  puts 'yes'
end
