n = gets.to_i
s=[]
e=[]
for i in 0..n-1 do
  s[i],e[i] = gets.chomp.split("-").map{|time| time.to_i}
end
#丸め処理
for i in 0..n-1 do
  s[i] = s[i] - s[i]%5
  e[i] = e[i] + 5-(e[i]%5) if e[i]%5 != 0
end
#ソーティング
for i in 0..n-1 do
  for j in 0..n-i-2 do
    if s[j] > s[j+1]
      temp_s = s[j]
      s[j] = s[j+1]
      s[j+1] = temp_s
      temp_e = e[j]
      e[j] = e[j+1]
      e[j+1] = temp_e
    end
  end
end
#集計
for i in 0..n-2 do
  for j in 0..n-i-2 do
    if e[j] >= s[j+1]
      # ←--------→
      #      ←-------→
      if e[j] <= e[j+1]
        e[j] = e[j+1]
        s[j+1] = s[j]
      # ←--------→
      #    ←--→
      elsif e[j] >= e[j+1]
        s[j+1] = s[j]
        e[j+1] = e[j]
      end
    end
  end
end
#出力
print "#{s[i]}-#{e[i]}\n"
for i in 1..n-1 do
  print "#{s[i]}-#{e[i]}\n" if !(s[i]==s[i-1] && e[i]==e[i-1])
end
      