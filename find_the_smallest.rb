def smallest(n)
  result = []
  size = n.to_s.size
  (0..size - 1).each do |orig|
    (0..size - 1).each do |dest|
      str = n.to_s
      char = str.slice!(orig)
      option_number = str.insert(dest, char).to_i
      result = [option_number,orig,dest] if (result.empty? || option_number < result[0] )
    end
  end
  result
end





# def smallest(n)
#   result = [n]
#   size = n.to_s.size
#   size.times do |i1|
#     size.times do |i2|
#       digits = n.to_s
#       p digits
#       x = digits.slice!(i1)
#       digits.insert(i2, x)
#       result = [digits.to_i, i1, i2] if digits.to_i < result.first
#     end
#   end
#   result
# end





# def smallest n
#   s = n.to_s.each_char.with_index
#   s.flat_map{|_,i|
#     s.map{|_,j|
#       x = n.to_s.chars
#       [x.insert(j, x.delete_at(i)).join.to_i, i, j]
#     }
#   }.min
# end





# def smallest(n)
#   digits = n.to_s.chars
#   digits.map.with_index do |digit, idx|
#     (0..(digits.size)).map do |jidx|
#       dup = digits.dup
#       dup.delete_at(idx)
#       dup.insert(jidx, digit)
#       [dup.join.to_i, idx, jidx]
#     end.min_by{ |result| result.first }
#   end.min_by{ |result| result.first }
# end




# def smallest(n)
#   n = n.to_s
#   res = [n, 0, 0]

#   (0...n.size).to_a.permutation(2).each { |i, j|
#     tmp = n.chars
#     tmp.insert(j, tmp.delete_at(i))
#     tmp = tmp.join
#     res = [tmp, i, j] if tmp < res[0]
#   }

#   [res[0].to_i] + res[1, 2]
# end




puts "   #{smallest(261235)} == [126235, 2, 0]       <=== #{smallest(261235) == [126235, 2, 0]}"
puts "    #{smallest(209917)} == [29917, 0, 1]        <=== #{smallest(209917) == [29917, 0, 1]}"
puts "   #{smallest(285365)} == [238565, 3, 1]       <=== #{smallest(285365) == [238565, 3, 1]}"
puts "    #{smallest(269045)} == [26945, 3, 0]        <=== #{smallest(269045) == [26945, 3, 0]}"
puts "   #{smallest(296837)} == [239687, 4, 1]       <=== #{smallest(296837) == [239687, 4, 1]}"
puts "#{smallest(935855753)} == [358557539, 0, 8]    <=== #{smallest(935855753) == [358557539, 0, 8]}"