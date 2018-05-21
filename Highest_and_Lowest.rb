# In this little assignment you are given a string of space separated numbers, and
#  have to return the highest and lowest number.
#
#  Notes:
#
# All numbers are valid Int32, no need to validate them.
# There will always be at least one number in the input string.
# Output string must be two numbers separated by a single space, and highest number is first.

# def hal(numbers)
#    numbers = numbers.split.map {|n| n.to_i}.sort
#    n1=[] << numbers[-1] << numbers[0]
#    numbers = n1
#   p numbers.join(" ")
# end
# 
#   hal("-1 2 -3 4 -5 4 9 10")


  def high_and_low(numbers)
    p  numbers.split.map(&:to_i).minmax.reverse.join(' ')
  end
    high_and_low("-1 2 -3 4 -5 4 9 10")

#   def high_and_low1(numbers)
#     numbers = numbers.split.map(&:to_i)
#     p "#{numbers.max} #{numbers.min}"
#   end
#     high_and_low1("-1 2 -3 4 -5 4 9 10")
#
# def high_and_low2(numbers)
#   a = numbers.split.map(&:to_i).sort
#   p  "#{a.last} #{a.first}"
# end
#   high_and_low2("-1 2 -3 4 -5 4 9 10")
#
# def high_and_low3(numbers)
#   p  numbers.split.minmax_by(&:to_i).reverse.join(' ')
# end
#   high_and_low3("-1 2 -3 4 -5 4 9 10")
