R,C = gets.split(" ").map{|str| str.to_i}
sy, sx = gets.split(" ").map{|str| str.to_i-1}
gy, gx = gets.split(" ").map{|str| str.to_i-1}
c = []
R.times do |i|
  c[i] = gets.split("")
end
queue = []
queue.push [gy,gx,0]

while(1)
  y,x,cnt = queue.shift.map{|num| num}
  if y==sy && x==sx
    puts cnt
    break
  else
    if c[y+1][x] == '.'
      queue.push [y+1,x,cnt+1]
      c[y+1][x] = 'f'
    end
    if c[y-1][x] == '.'
      queue.push [y-1,x,cnt+1]
      c[y-1][x] = 'f'
    end
    if c[y][x+1] == '.'
      queue.push [y,x+1,cnt+1]
      c[y][x+1] = 'f'
    end
    if c[y][x-1] == '.'
      queue.push [y,x-1,cnt+1]
      c[y][x-1] = 'f'
    end
  end
end
