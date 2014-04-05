m = gets.to_i

case m
when 0..100-1
  vv = '00'
when 100..1000-1
  vv = '0' + (m/100).to_s
when 1000..5000
  vv = (m/100).to_s
when 6000..30000
  vv = ((m/1000) + 50).to_s
when 35000..70000
  vv = (((m/1000) - 30)/5 + 80).to_s
when 70001..100000
  vv = '89'
end

print "#{vv}\n"