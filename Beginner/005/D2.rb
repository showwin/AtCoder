def prepare(ary, n)
  n = n - 1
  @rs = Hash.new(0)
  @n.times do |i|
    @n.times do |j|
      @rs["#{n-i},#{n-j}"] = ary[n-i][n-j] + @rs["#{n-i + 1},#{n-j}"] + @rs["#{n-i},#{n-j + 1}"] - @rs["#{n-i + 1},#{n-j + 1}"]
    end
  end
end

def max_of(ary, l1, l2)
  scores = []
  (@n - l2 + 1).times do |i|
    (@n - l1 + 1).times do |j|
      score = @rs["#{i},#{j}"] + @rs["#{i+l2},#{j+l1}"] - @rs["#{i+l2},#{j}"] - @rs["#{i},#{j+l1}"]
      # p score
      scores << score
    end
  end
  scores.max || 0
end

def prepare_tako(ary)
  @cand = Hash.new
  @n.times do |i|
    @n.times do |j|
      l1 = i + 1
      l2 = j + 1
      @cand[l1*l2] ||= []
      @cand[l1*l2] << [max_of(ary, l1, l2), max_of(ary, l2, l1)].max
    end
  end
end

def prepare_result
  @max = Hash.new
  (@n*@n).times do |i|
    can_max = @cand[i+1].max unless @cand[i+1].nil?
    @max[i+1] = [can_max || 0, @max[i] || 0].max
  end
end

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

prepare(ary, @n)

prepare_tako(ary)

prepare_result

ps.each do |a|
  puts @max[a]
end
