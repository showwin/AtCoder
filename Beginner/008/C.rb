def num_of_front(array, n)
  num = 0
  n-1.times do |i|
    (n-i-1).times do |j|
      num += 1 if array[i] % array[j] == 0
    end
  end
  num
end

N = gets.to_i
c = Array.new(N)
N.times {|i| c[i] = gets.to_i }
comb_all = c.combination(N)
n = 0
comb_all.each do |n_array|
  n += num_of_front(n_array, N)
end
puts n/N
