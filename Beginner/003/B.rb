s = gets.chomp
t = gets.chomp
flg = true
for i in 0..s.size-1 do
  ss = s.slice(i,1)
  ts = t.slice(i,1)
  if ss == ts
    next
  elsif ss == "@" && (ts == "a" || ts == "t" || ts == "c" || ts == "o" || ts == "d" || ts == "e" || ts == "r") 
    next
  elsif ts == "@" && (ss == "a" || ss == "t" || ss == "c" || ss == "o" || ss == "d" || ss == "e" || ss == "r")
    next
  else
    flg = false
    break
  end
end
if flg
  puts "You can win\n"
else
  puts "You will lose\n"
end