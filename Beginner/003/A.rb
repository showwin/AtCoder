n = gets.to_i
if n%2 == 1
  puts (n+1)*n/2*10000/n
else
  puts (n+1)*10000/2
end