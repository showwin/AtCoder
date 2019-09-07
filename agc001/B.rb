a,b = gets.split(" ").map{|str| str.to_i}
count = 0
while(1)
  if a == b
    break
  elsif a-b <= 3 && 0 < a-b 
    a -= 1
  elsif -3 <= a-b && a-b < 0
    a += 1
  elsif 4 <= a-b && a-b <= 7
    a -= 5
  elsif -7 <= a-b && a-b <= -4
    a += 5
  elsif 7 < a-b
    a -= 10
  elsif a-b < -7
    a += 10
  end
  count += 1
end
puts count