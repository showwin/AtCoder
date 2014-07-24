N = gets.to_i
s = []
s_count = Array.new(N,0)
N.times do |i|
  name = gets
  s.push(name) if !(s.include?(name))
  index_no = s.index(name)
  s_count[index_no] += 1
end
elected = s_count.index(s_count.max)
puts s[elected]
