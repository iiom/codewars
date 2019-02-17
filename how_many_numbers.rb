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
#
#
# def find_all(n, k)
#   a = (1..9).to_a.repeated_combination(k).select{|c| c.reduce(&:+) == n}
#   a.empty? ? [] : [a.size, a.first.join.to_i, a.last.join.to_i]
# end
#
#
# ___________________
# def find_all(n, k)
#   ps = parts(n, k, 1)
#   return [] if ps.empty?
#   [ps.length, value(ps[0]), value(ps[-1])]
# end
#
# def value(xs)
#   xs.reduce(0) {|a, b| 10*a + b}
# end
#
# def parts(s, n, p)
#   return [] if s < p
#   return s < 10 ? [[s]] : [] if n == 1
#   a = []
#   (p..9).each {|i| parts(s - i, n - 1, i).each {|xs| a << xs.insert(0, i)}}
#   a
# end
#____________________________
#
#
# def find_all(n, k)
#   return [] unless n <= 9*k
#
#   final = [1,2,3,4,5,6,7,8,9].repeated_combination(k).reject do |x|
#     x.reduce(:+) != n
#   end
#
#   return final.empty? ? [] : [final.count, final.first.join.to_i, final.last.join.to_i]
# end
#