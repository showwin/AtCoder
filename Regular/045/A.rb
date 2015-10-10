words = gets.split
list = { 'Left' => '< ', 'Right' => '> ', 'AtCoder' => 'A ' }
result = ''
words.each do |w|
  result << list[w]
end

puts result[0..-2]
