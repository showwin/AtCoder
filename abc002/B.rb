str = gets.chomp
result = ""
for i in 0..str.length-1 do
  s = str[i,1]
  result += s if not s == "a" || s == "i" || s == "u" || s == "e" || s == "o"
end
puts result