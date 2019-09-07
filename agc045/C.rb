n = gets.to_i
list = []
((n * 2)+1).times do
  list << gets.split.map(&:to_i)
end
result = Array.new(((n * 2)+1))
org = nil
((n * 2)+1).times do |i|
  flg = true
  list.each_with_index do |l, j|
    next if j == i
    if org.nil?
      org = l
      next
    end
    if (org[0] != l[0] && org[1] != l[1])
      result[i] = 1
    end
    org = nil
  end
end

result.each do |r|
  if r == 1
    puts 'NG'
  else
    puts 'OK'
  end
end
