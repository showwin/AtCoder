y = gets.to_i
flg = "NO"
if y%4 == 0
  flg = "YES"
end
if y%100 == 0
  flg = "NO"
end
if y%400 == 0
  flg = "YES"
end
puts flg