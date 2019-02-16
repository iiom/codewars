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
p removNb(26)
p removNb(100)