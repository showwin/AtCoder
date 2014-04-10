s,t = gets,gets
A = "atcoder"
f = true
s.size.times do |i|
  if !((s[i] == t[i]) || (s[i] == "@" && A.include?(t[i])) || (t[i] == "@" && A.include?(s[i])))
    f = false
    break
  end
end
if f
  puts "You can win\n"
else
  puts "You will lose\n"
end