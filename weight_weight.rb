def order_weight(strng)
  strng = strng.split(" ").map{|e| [e, e.split("").map(&:to_i).sum]}
  strng.sort_by { |elem| [elem.last, elem.first] }.map(&:first).join(' ')
end

puts "#{order_weight("103 123 4444 99 2000")} <==> 2000 103 123 4444 99"
puts "#{order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")} <==> 11 11 2000 10003 22 123 1234000 44444444 9999"


# best from kata
# def order_weight(string)
#   string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
# end