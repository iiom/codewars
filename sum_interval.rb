def sum_of_intervals(intervals)
  intervals.map {|a| (a.first...a.last).to_a}.flatten.uniq.size
end

puts "#{sum_of_intervals([[1, 5]])} <==> 4"
puts "#{sum_of_intervals([[1, 5], [6, 10]])} <==> 8"
puts "#{sum_of_intervals([[1, 5], [1, 5]])} <==> 4"
puts "#{sum_of_intervals([[1, 4], [7, 10], [3, 5]])} <==> 7"
puts "#{sum_of_intervals([[37, 488], [92, 257], [167, 479], [82, 408]])} <==> 451"


# some solution from kata
# def sum_of_intervals(intervals)
#   intervals
#     .map { |arr| (arr.first...arr.last).to_a }
#     .reduce(:+)
#     .uniq
#     .chunk_while { |a,b| b - a == 1 }
#     .map(&:size)
#     .reduce(:+)
# end
#
#
#
# def sum_of_intervals(intervals)
#   uniq_digits = Set.new
#   total = 0
#
#   (0...intervals.size).each do | i |
#     sub_arr = intervals[i]
#     (sub_arr[0]...sub_arr[1]).each do | num |
#       total += 1 unless uniq_digits.include?(num)
#       uniq_digits << num
#     end
#   end
#   total
# end
#
#
# def sum_of_intervals(intervals)
#   intervals.reduce([]) { |acc, val| acc + [*val[0]...val[1]] }.uniq.count
# end
#
# # class SumOfIntervals
# #   def initialize(intervals)
# #     @intervals = intervals
# #   end
#
# #   def unique_sum
# #     @intervals.reduce([]) { |acc, val| acc + [*val[0]...val[1]] }.uniq.count
# #   end
# # end