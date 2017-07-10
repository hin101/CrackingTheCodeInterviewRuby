def permutation?(str1, str2)
  return false if str1.length != str2.length
  str1_count = Hash.new(0)
  str2_count = Hash.new(0)
  str1.each_char { |s1| str1_count[s1] += 1}
  str2.each_char { |s2| str2_count[s2] += 1}
  str1_count.all? do |ch, _count|
    return false if str1_count[ch] != str2_count[ch]
  end
  true
end
