A,B = gets.split(" ").map{|str| str.to_i }
count = 0
A.upto(B) do |i|
  if i.to_s.include?("4")
    count += 1
    next
  elsif i.to_s.include?("9")
    count += 1
    next
  end
end
puts count
    