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

#z создание массива, конвертировать в массив цифр, найти мин макс и вывести в строку string
  def high_and_low(numbers)
    p  numbers.split.map(&:to_i).minmax.reverse.join(' ')    #&:  способ передать блок
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


# split Делит строку str на подстроки по разделителю pattern
# (который может быть как правилом, так и строкой).  str.split(pattern=$;, [limit])

# map Выполняет выражение block для каждого элемента массива array.
# Создает и возвращает новый массив, состоящий из значений, которые получены при
# вычислении выражения block. Исходный массив при этом не изменяется.       array.map {|item| block }      #=> an_array

# minmax Returns a two element array which contains the minimum and the maximum
# value in the enumerable. The first form assumes all objects implement Comparable;
# the second uses the block to return a <=> b.    minmax { |a, b| block } → [min, max]

# reverse Возвращает новый массив, в котором элементы массива array стоят в обратном порядке.

# join Возвращает строку, созданную путем преобразования каждого элемента
# массива в строку, разделенных строкой     ["a", "b", "c" ].join("-")  #=> "a-b-c"
