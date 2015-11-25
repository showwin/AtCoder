n = gets.to_i
puts "#{format("%02d",n/3600)}:#{format("%02d",(n/60)%60)}:#{format("%02d",n%60)}"
