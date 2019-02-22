def sum_of_intervals(intervals)
  intervals.map {|a| (a.first...a.last).to_a}.flatten.uniq.size
end

puts "#{sum_of_intervals([[1, 5]])} <==> 4"
puts "#{sum_of_intervals([[1, 5], [6, 10]])} <==> 8"
puts "#{sum_of_intervals([[1, 5], [1, 5]])} <==> 4"
puts "#{sum_of_intervals([[1, 4], [7, 10], [3, 5]])} <==> 7"
puts "#{sum_of_intervals([[37, 488], [92, 257], [167, 479], [82, 408]])} <==> 451"


