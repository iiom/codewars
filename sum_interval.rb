aa = [[1, 4], [7, 10], [3, 5]]
bb = [[1, 4], [7, 10], [3, 5]]
# aa.each_with_index do |i, index|
#   p aa[index+1][0]
#  p (i[0]..i[-1]).to_a#.include?(aa[index+1][0])
# end
# #
# #
# # # p a.include?(b)
# #
# # # a.each {|i| p b.include?(i)}
# # aa1 = aa.first
# # p aa1
# # p (aa1[0]..aa1[-1]).to_a
# #
# # p aa[0] - aa[1] - aa[2]
#
# a = [1, 1, 2];
# b = [1, 2, 3];
aa1 = []
# p ((aa[0][0]..aa[0][1]).to_a & (aa[1][0]..aa[1][1]).to_a) != [] # == a #=> false since a&b == [1,2]
# p (aa[0][0]..aa[2][1]).to_a
# if ((aa[0][0]..aa[0][1]).to_a & (aa[2][0]..aa[2][1]).to_a) != [] # == a #=> false since a&b == [1,2]
#   aa[0].replace([aa[0][0], aa[2][1]])
#   aa.delete(aa[2])
# end
# p aa

 bb.select do |i|
    bb.each_with_index {|e, i| p (e[i]..e[i]).to_a.include?(e)}
  # p (i.first..i.last).to_a.include?(i.)
end
