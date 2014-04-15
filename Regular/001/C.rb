a = []
8.times do |x|
  a[x] = gets.split("")
end
8.times do |i|
  8.times do |j|
    flg = true
    break if a[i].include?("Q")
    8.times do |k|
      if a[k][j] == "Q"
        flg = false
        break
      end
    end
    next if !flg
    8.times do |l|
      if i+l < 8 && j+l < 8 && a[i+l][j+l] == "Q"
        flg = false
        break
      elsif i+l < 8 && j-l >= 0 && a[i+l][j-l] == "Q"
        flg = false
        break
      elsif i-l >= 0 && j+l < 8 && a[i-l][j+l] == "Q"
        flg = false
        break
      elsif i-l >= 0 && j-l >= 0 && a[i-l][j-l] == "Q"
        flg = false
        break
      end
    end
    a[i][j] = "Q" if flg
  end
end
8.times do |i|
  8.times do |j|
    print a[i][j]
  end
  print "\n"
end