#Pascal's Triangle
# Pascal's Triangle
# Wikipedia article on Pascal's Triangle: http://en.wikipedia.org/wiki/Pascal's_triangle
# Write a function that, given a depth (n), returns a single-dimensional array/list representing Pascal's Triangle to the n-th level.
# For example:
# Kata.PascalsTriangle(4) == new List<int> {1,1,1,1,2,1,1,3,3,1}


def pascalsTriangle(n)
  arr = []
  count = 0

  (1..n).each do |lvl|
    (1..lvl).each do |col|
      par_a_index = count - lvl
      par_b_index = par_a_index + 1
      par_a = arr[par_a_index]
      par_b = arr[par_b_index]
      new_value = (col == 1 || col == lvl) ? 1 : par_a + par_b
      arr << new_value
      count += 1
    end
  end
  arr
end

# Лучшее с каты
# def pascalsTriangle(n)
#   a=o=[1]
#   (n-1).times{o=(o+[0]).zip([0]+o).map{|a,b|a+b};a+=o}
#   a
# end
#
#
# def pascalsTriangle(n)
#    (1..n).each_with_object([]) do |i, a|
#      a << (1..i).map { |j| j == 1 ? 1 : (a.last[j-2] + a.last[j-1] rescue 1) }
#    end.flatten
# end
#
#
# def pascalsTriangle(num)
#   (1..num).flat_map do |n|
#     (1...n).reduce([1]) { |line, k| line + [line.last * (n - k) / k] }
#   end
# end
#
#
# def pascalsTriangle(n)
# a=[1]
# r=a*1
# (n-1).times{r+=a=([0]+a).zip(a+[0]).map{|x,y|x+y}}
# r
# end
#
#
# def pascalsTriangle(n)
#   (0..n-1).map do |r|
#     (1..r).inject([1]) { |memo, e| memo.push(memo.last * (r + 1 - e) / e)}
#   end.flatten
# end
#
#
# def pascalsTriangle(n)
#   #return a flat array representing the values of Pascal's Triangle to the n-th level
#   arr = Array.new(n) {[1]}
#   sum = 1
#
#   arr.each do |x|
#     while x.size != sum
#       x << 1
#     end
#     sum += 1
#   end
#
#   x = 0
#   trans_array = 2
#   trans_index = 1
#
#   while trans_array < arr.size
#     while trans_index < arr[trans_array].size - 1
#       arr[trans_array][trans_index] = arr[trans_array - 1][x] + arr[trans_array - 1][x + 1]
#       trans_index += 1
#       x += 1
#     end
#
#     x = 0
#     trans_index = 1
#     trans_array += 1
#   end
#   arr.flatten()
# end
