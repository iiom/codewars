def sum_pairs(ints, s)
  ints.combination(2).find {|e| e[0] + e[1] == s} # find/detect
end

# best from kata
# def sum_pairs(ints, s)
#   seen = {}
#   for i in ints do
#     return [s-i, i] if seen[s-i]
#     seen[i] = true
#   end
#   nil
# end

l1 = [1, 4, 8, 7, 3, 15]
l2 = [1, -2, 3, 0, -6, 1]
l3 = [20, -13, 40]
l4 = [1, 2, 3, 4, 1, 0]
l5 = [10, 5, 22, 33, 2, 3, 7, 5]
l6 = [4, -2, 3, 3, 4]
l7 = [0, 2, 0]
l8 = [5, 9, 13, -3]

p sum_pairs(l1, 8) #= [1, 7], "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")
p sum_pairs(l2, -6) #= [0, -6], "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6")
p sum_pairs(l3, -7) #= nil, "No Match: ["+l3.join(", ")+"] should return nil for sum = -7")
p sum_pairs(l4, 2) #= [1, 1], "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
p sum_pairs(l5, 10) #= [3, 7], "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
p sum_pairs(l6, 8) #= [4, 4], "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
p sum_pairs(l7, 0) #= [0, 0], "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
p sum_pairs(l8, 10) #= [13, -3], "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10")