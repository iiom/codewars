# A square of squares
# You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!
#
# However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you'14-2 v1 v3 currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.
#
# Task
# Given an integral number, determine if it's a square number:
#
# In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
#
# The tests will always use some integral number, so don't worry about that in dynamic typed languages.
#
# Examples
# is_square (-1) # => false
# is_square   0 # => true
# is_square   3 # => false
# is_square   4 # => true
# is_square  25 # => true
# is_square  26 # => false

# z извлекаем корень.округляем.возводим в квадрат сравниваем, совпало с исходным true
def is_square(x)
  x >= 0 && Math.sqrt(x).to_i ** 2 == x     ## методы ceil, floor, round, to_i, to_int и truncate имеют схожую функциональность
end

## корень от числа деление на 1 и сравнивать остаток от деления с 0
# def is_square(x)
#   x < 0 ? false : Math.sqrt(x) % 1 == 0
# end


# def is_square(x)
# x < 0 ? false :  Math.sqrt(x).to_s[-1] == "0"
# end

# p is_square(0)
# p is_square(5)
# p is_square(10)
# p is_square(15)
# p is_square(25)
