n = 2025 - gets.to_i

9.times do |i|
  9.times do |j|
    puts "#{i+1} x #{j+1}" if (i+1)*(j+1) == n
  end
end
