def missing(s)
  s = s.each_char.to_a.map(&:to_i)
  m = []
  puts "original #{s}"
  (1..6).to_a.select do |i|
    s.first(i).size * 2 <= s.size ? nil : next
    fr = s.first(i).join.to_i
    (fr + (s.size / i)).to_s.split('').size > s.first(i).size ? (ls = s.last(i + 1).join.to_i) : (ls = s.last(i).join.to_i)
    ss = (fr..ls).to_a
    next if (ss.uniq != ss) || ss.empty? || ss.size > s.size || (i == 1 && ss.size < s.size) #|| (i == 2 && ss.size * 2 < s.size)

    ee = []
    ss.each do |i|
      e = i.to_s.split('').size
      ee << s.slice!(0, e)
    end

    ee.map!(&:join).delete_if{|i| i.empty?}.map(&:to_i)

    puts "fr #{fr}"
    puts "ls #{ls}"
    p ss
    p ee
    puts "_________________________"
  
  end

end

missing("1234567")
missing("12131415")
missing("112113114115")
missing("9899100101103")
missing("99991000110002")