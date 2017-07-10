def unique_chars(str)
  chars = Hash.new(0)
  str.each_char { |c| chars[c] += 1 }
  chars.each do |_ch, count|
    return false if count > 1
  end
  true
end
