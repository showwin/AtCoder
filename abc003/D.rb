def fact(n) n==0 ? 1 : (1..n).to_a.inject(:*) end

r,c = gets.split(" ").map{|str| str.to_i}
x,y = gets.split(" ").map{|str| str.to_i}
d,l = gets.split(" ").map{|str| str.to_i}
#区切りの置き方
space_num = (r-x+1)*(c-y+1)
#区切りの中の配置の仕方
d_put_num = fact(x*y)/(fact(d)*fact(x*y-d))
#場合の数
puts (space_num*d_put_num*l_put_num)%(10**9+7)