def find_all(n, k)
  arr_numb = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  arr_combination = arr_numb.repeated_combination(k)
  possible_numbers = arr_combination.select {|elem| elem.sum == n}
  return [] if possible_numbers.empty?
  amount_numbers = possible_numbers.size
  min_number = possible_numbers.min.join.to_i
  max_number = possible_numbers.max.join.to_i
  [amount_numbers, min_number, max_number]
end

p find_all(10, 3) == [8, 118, 334]
p find_all(27, 3) == [1, 999, 999]
p find_all(84, 4) == []
p find_all(35, 6) == [123, 116999, 566666]
p find_all(50, 10) == [1514, 1111199999, 5555555555]

# best kata
# def find_all(s, d)
#   sols = (1..9).to_a.repeated_combination(d).select {|arr| arr.sum == s}
#   return [] if sols.empty?
#   [sols.length, sols.min.join.to_i, sols.max.join.to_i]
# end






