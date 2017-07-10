def is_unique?(str)
  return false if str.nil? || str.length <= 1
  chars = Hash.new(0)
  str.each_char { |c| chars[c] += 1 }
  chars.each do |_ch, count|
    return false if count > 1
  end
  true
end
