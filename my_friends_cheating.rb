def removNb(n)
  arr_sum = (1..n).to_a.sum
  results = []
  (1..n).each do |elem|
    s ||= 0
    s = (arr_sum - (elem + s)) / elem
    results << [s, elem] << [elem, s] if elem * s == arr_sum - (elem + s)
  end
  results.sort!
end

# is to long time
# def removNb(n)
#   arr_numb = (1..n).to_a
#   arr_res = []
#   arr_numb.combination(2).to_a.select do |elem|
#     if (arr_numb.arr_sum - elem.arr_sum) == elem.inject(:*)
#       arr_res << elem << elem.reverse
#     end
#   end
#   arr_res
# end
#
#
#
# best from kata
# def removNb(n)
#   (1..n).each.with_object([]) do |a, results|
#     b, remainder = (n*(n+1)/2-a).divmod(a+1)
#     results << [a,b] if remainder == 0 && b < n
#   end
# end
#
#
#
# best from kata
# def removNb(n)
#   sum_of_all = (n * (n + 1)) / 2  # Standard formula for sum of the integers from 1 to n.
#   result = []
#
#   # The smallest number that could be part of a valid solution (call it m)
#   # would have to work with the biggest number available (i.e., n).
#   # (Anything smaller than that couldn't multiply to a big enough number.)
#   # Some algebra:
#   # m * n             = sum_of_all - n - m  (The required condition)
#   # m * (n + 1)       = sum_of_all - n      (Add m to both sides)
#   # (m + 1) * (n + 1) = sum_of_all + 1      (Add n + 1 to both sides)
#   # (m + 1) * (n + 1) > sum_of_all          (By one!)
#   # (m + 1) * (n + 1) > (n * (n + 1)) / 2   (Sub in sum_of_all's actual value)
#   # m + 1             > n / 2               (Divide both sides by (n + 1))
#   # m                 > (n / 2) - 1         (Subtract 1 from both sides)
#
#   (n / 2).upto(n) do |i|
#     partial_target = sum_of_all - i   # Still need to subtract the other number.
#     j = partial_target / i            # Any bigger j will have a product that's too big.
#     until i * j < partial_target - j  # This or any smaller j has a product that's too small.
#       result << [i, j] if i * j == partial_target - j
#       j -= 1
#     end
#   end
#   result
# end
#
#
#
p removNb(26)
p removNb(100)