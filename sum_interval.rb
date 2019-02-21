# aa = [[1, 4], [7, 10], [3, 5]]
# bb = [[1, 4], [7, 10], [3, 5]]
#
# aa1 = []
# # p ((aa[0][0]..aa[0][1]).to_a & (aa[1][0]..aa[1][1]).to_a) != [] # == a #=> false since a&b == [1,2]
# # p (aa[0][0]..aa[2][1]).to_a
# # if ((aa[0][0]..aa[0][1]).to_a & (aa[2][0]..aa[2][1]).to_a) != [] # == a #=> false since a&b == [1,2]
# #   aa[0].replace([aa[0][0], aa[2][1]])
# #   aa.delete(aa[2])
# # end
# # p aa
#
# # bb.select do |i|
# #    bb.each_with_index {|e, i| p (e[i]..e[i]).to_a.include?(e)}
# # p (i.first..i.last).to_a.include?(i.)
# # end
# # bb.select {|e| p Range.new(e.first,e.last).include?(e)}
#
# r1 = Range.new(1, 4)
# r2 = Range.new(7, 10)
# r3 = Range.new(3, 5)
#
# # p r1.step(1){|i| p r3.member?(i)}
# # p r1.select{|i| r3.member?(i)}
# # p r1.any?(r3)
#
# ab1 = []
# ab1 << bb.select {|i| Range.new(i.first, i.last).any?(r1)}
# ab1 << bb.select {|i| Range.new(i.first, i.last).any?(r2)}
# ab1 << bb.select {|i| Range.new(i.first, i.last).any?(r3)}
# # bb.select! {|i| Range.new(i.first, i.last).include?(aa[0][1])}
# (ab1 &= ab1).each do |i|
#    i.replace(i.flatten.minmax) if i.size >= 2
#    i.flatten! if i.size < 2
# end
# ab1.map! {|i| i.last-i.first}
#
# ab1.sum
########################################################################################
# intervals.compact#.each { |i| int_origin.delete_at(i) }
# p int_origin

# ab1 = []
# ab1 << intervals.select {|i| Range.new(i.first, i.last).any?(r1)}
# ab1 << intervals.select {|i| Range.new(i.first, i.last).any?(r2)} if intervals.size == 2
# if intervals.size == 3
#   ab1 << intervals.select {|i| Range.new(i.first, i.last).any?(r2)}
#   ab1 << intervals.select {|i| Range.new(i.first, i.last).any?(r3)}
# end
# (ab1 &= ab1).each do |i|
#   i.replace(i.flatten.minmax) if i.size >= 2
#   i.flatten! if i.size < 2
# end
# ab1.map! {|i| i.last-i.first}
#
# ab1.sum
################################################################################

def sum_of_intervals(intervals)
  i_origin = intervals

  ir1 = []
  intervals.each do |i|

    r1 = Range.new(i.first, i.last)
    ir1 = intervals.select do |ii|
      p ii
      p Range.new(ii.first, ii.last).any?(r1) unless i != ii
    end
  end
  p ir1

  ir1.replace(ir1.flatten.minmax)
  intervals.each {|i| intervals.delete(i)}.flatten!

  res = ir1.reduce(:-).abs if intervals == []
  res = ir1.reduce(:-).abs + intervals.reduce(:-).abs if intervals != []
  res
end

# puts "#{sum_of_intervals([[1, 5]])} <==> 4"
puts "#{sum_of_intervals([[1, 5], [6, 10]])} <==> 8"
# puts "#{sum_of_intervals([[1, 5], [1, 5]])} <==> 4"
# puts "#{sum_of_intervals([[1, 4], [7, 10], [3, 5]])} <==> 7"
# puts "#{sum_of_intervals([[37, 488], [92, 257], [167, 479], [82, 408]])} <==> 451"


