@n = gets.to_i
ary = Array.new(@n, Array.new(@n, 0))
@n.times do |i|
  ary[i] = gets.split.map(&:to_i)
end
q = gets.to_i
ps = []
q.times do
  ps << gets.to_i
end

def max_of(ary, l1, l2)
  scores = []
  (@n - l2 + 1).times do |i|
    (@n - l1 + 1).times do |j|
      score = 0
      l1.times do |k1|
        l2.times do |k2|
          score += ary[i + k2][j + k1]
        end
      end
      scores << score
    end
  end
  scores.max || 0
end

ps.each do |a|
  results = []
  # 作れる数のルートからその数までが長方形の辺となりうる (ただし、辺の長さはN以下)
  to = [@n, Math.sqrt(a).floor].min
  1.upto(to) do |l1|
    l2 = (a / l1) > @n ? @n : (a / l1)
    # 2辺の長さ l1, l2
    results << max_of(ary, l1, l2)
    results << max_of(ary, l2, l1)
  end
  puts results.max
end
