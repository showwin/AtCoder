n = gets.chomp.to_i
as = gets.chomp.split(" ").map { |a| a.to_i }
count = 0
as.each do |a|
  i = a % 6
  case i
  when 0
    count += 3
  when 5
    count += 2
  when 2, 4
    count += 1
  end
end

puts count
