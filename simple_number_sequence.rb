def missing(s)
  s = s.each_char.to_a.map(&:to_i)
  range = []

  (1..6).to_a.each do |i|
    s.first(i).size * 3 <= s.size ? nil : next
    fn = s.first(i).join.to_i
    (fn + (s.size / i)).to_s.split('').size > s.first(i).size ? (ln = s.last(i + 1).join.to_i) : (ln = s.last(i).join.to_i)
    ss = (fn..ln).to_a
    next if ss.size > s.size + 3 || ss.size < s.size / 8 || ss.size == 2
    range = ss unless ss == []
  end

  range_witout = []
  range.each do |i|
    a = i.to_s.split('').size
    s.first(a).join.to_i.equal?(i) ? range_witout << s.shift(a) : nil
  end

  range_witout = range_witout.map.map(&:join).map(&:to_i)

  (range - range_witout).empty? || (range - range_witout).size >= 2 ? -1 : (range - range_witout).first
end

missing("123567")
missing("899091939495")
missing("9899101102")
missing("599600601602")
missing("99991000110002")
missing("345678910111213")
missing("1234567810111213")
missing("9994999599969997999810000100011000210003")
missing("495474954849549495504955149552495534955549556495574955849559")
missing("878038878039878041878042878043878044878045878046878047878048878049")
missing("12345678910111213")



# from kata
# def missing s
#   (1..(s.size/2)).each do |i|
#     (i..i+1).each do |j|
#       ss, sss, s1, s2 = s.dup, s.dup, s[0,i], s[-j..-1]
#       if ((s2.to_i-s1.to_i)*j) >= s.size && (s1..s2).one?{ |n| ss.delete_prefix!(n.to_s).nil? }
#         (s1..s2).each{ |n| return n.to_i if sss.delete_prefix!(n.to_s).nil? }
#       end
#     end
#   end
#   -1
# end






# def missing(sequence)
#   first_number = ""
#   # The first number of the sequence could start with the
#   # first N characters of the string, up to the length minus 1.
#   # For example, if the string is "12345" then we need to check
#   # ["1", "2", "3', "4", "5"]; ["12", "34", "5"]; ["123", "45"], etc.
#   (0...sequence.size - 1).each do |index|
#     first_number += sequence[index]
#     # Work out what the valid sequence (missing no numbers) would
#     # look like, assuming the current index is correct for where
#     # the sequence begins. For example, if we're at "12" above, then
#     # we would expect the sequence to be ["12", "13", "14"].
#     valid_sequence = []
#     number_incrementor = first_number.to_i
#     while valid_sequence.join.size <= sequence.size
#       valid_sequence << number_incrementor.to_s
#       number_incrementor += 1
#     end
#     # Iterate over the valid sequence and find the missing values.
#     missing = []
#     check_sequence = sequence.dup
#     valid_sequence.each do |number|
#       next_seq_number = check_sequence.slice(0...number.size)
#       if next_seq_number == number
#         check_sequence.slice!(0...number.size)
#       else
#         missing << number
#       end
#     end
#     # If there's exactly 1 missing value; nothing left over in the
#     # original string; and the missing value isn't at the end of
#     # the sequence, then we have found the missing value so return
#     # it and break out of the loop.
#     next if missing.size > 1
#     next unless check_sequence == ""
#     next if missing.first == valid_sequence.last
#     return missing.first.to_i
#   end
#   # If we haven't found a sequence with 1 missing value, return -1.
#   -1
# end






# def missing s
#   missed = -1
#   (1..s.size/2).each do |i|
#     missed = -1
#     base = s[0, i].to_i
#     seq = base.to_s
#     j = 1
#     while s.start_with?(seq) && seq.size < s.size
#       if s.start_with?(seq + (base + j).to_s)
#         seq += (base + j).to_s
#         j += 1
#       elsif s.start_with?(seq + (base + j + 1).to_s)
#         if missed == -1
#           seq += (base + j + 1).to_s
#           missed = base + j
#           j += 2
#         else
#           missed = -1
#           break
#         end
#       else
#         missed = -1
#         break
#       end
#     end
#     break if missed > 0
#   end
#   missed
# end






# def missing(s)
#   1.upto(s.size-1) do |span|
#     tmp = 1
#     m = s[0..span-1].to_i
#     taken = span
#     while taken < s.length
#       m += 1
#       n = m.to_s
#       unless n == s[taken..taken+n.length-1]
#         res = m
#         tmp -= 1
#         break if tmp < 0
#       else
#         taken += n.length
#       end
#     end
#     return res if tmp == 0 and taken == s.length
#   end
#   -1
# end






# def missing s
#   for c in 1...s.length
#     temp = 1
#     m = s[0...c].to_i
#     hold = c
#     while hold < s.length
#       m += 1
#       n = m.to_s
#       if n != s[hold...hold + n.length]
#         res = m
#         temp -= 1
#         break if temp < 0
#       else hold += n.length end
#     end
#     return res if temp == 0 and hold == s.length
#   end
#   return -1
# end