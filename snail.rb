def snail(array)
  result = []
  while array.flatten.any?
    result << array.shift
    array = array.transpose.reverse
  end
  result.flatten
end

# BEST SOLUTIONS
# def snail(array)
#   array.empty? ? [] : array.shift + snail(array.transpose.reverse)
# end
#
#
# def snail(array)
#   array.empty? ? [] : array[0] + snail(array[1..-1].transpose.reverse)
# end

p snail([[1,2,3,1],
         [4,5,6,4],
         [7,8,9,7],
         [7,8,9,7]]) # , [1, 2, 3, 1, 4, 7, 7, 9, 8, 7, 7, 4, 5, 6, 9, 8]

# p snail([[1,2,3],
#         [4,5,6],
#         [7,8,9]]) # , [1, 2, 3, 6, 9, 8, 7, 4, 5]

p snail([[1,2,3],
         [8,9,4],
         [7,6,5]]) #=> [1,2,3,4,5,6,7,8,9]