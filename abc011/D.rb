n, d = gets.split.map(&:to_i)
g_x, g_y = gets.split.map(&:to_i)

pr = Hash.new
pr['0,0'] = 1
n.times do |i|
  new_pr = Hash.new
  pr.each do |key, val|
    x,y = key.split(',').map(&:to_i)
    new_pr["#{x+d},#{y}"] ||= 0
    new_pr["#{x+d},#{y}"] += val*0.25
    new_pr["#{x-d},#{y}"] ||= 0
    new_pr["#{x-d},#{y}"] += val*0.25
    new_pr["#{x},#{y+d}"] ||= 0
    new_pr["#{x},#{y+d}"] += val*0.25
    new_pr["#{x},#{y-d}"] ||= 0
    new_pr["#{x},#{y-d}"] += val*0.25
  end
  pr = new_pr
end

puts pr["#{g_x},#{g_y}"] || 0
