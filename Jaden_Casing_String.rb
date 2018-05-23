# Jaden Smith, the son of Will Smith, is the star of films such as
# The Karate Kid (2010) and After Earth (2013). Jaden is also known for some of
# his philosophy that he delivers via Twitter. When writing on Twitter, he is
# known for almost always capitalizing every word.
#
# Your task is to convert strings to how they would be written by Jaden Smith.
# The strings are actual quotes from Jaden Smith, but they are not capitalized
# in the same way he originally typed them.
#
# Example:
#
# Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
# Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"
# Note that the Java version expects a return value of null for an empty string or null.

#z разбить предложение, передать каждое слово в блок и изменить регистр первой буквы
class String
  def toJadenCase
    split.each{|i| i.capitalize!}.join(' ')
    # split.each(&:capitalize!).join(' ')     # другой вариант передать блок
  end
end

## добавить библиотеку рельс и использовать метод рельс
# require 'active_support/all'
# class String
#   def toJadenCase
#     titleize
#   end
# end

# class String
#   def toJadenCase
#     gsub(/(\w|')+/, &:capitalize)
#   end
# end


# a=String.new
# a = "How can mirrors be real if our eyes aren't real"
# p a.toJadenCase


# split Делит строку str на подстроки по разделителю pattern
# (который может быть как правилом, так и строкой).  str.split(pattern=$;, [limit])

# each Выполняет код в block для каждого элемента массива array, передавая в
# блок текущий элемент в качестве параметра.   array.each {|item| block }  #=> array

# capitalize Возвращает копию строки str в которой первый символ преобразуется в верхний регистр, а остальные — в нижний.

# join Возвращает строку, созданную путем преобразования каждого элемента
# массива в строку, разделенных строкой     ["a", "b", "c" ].join("-")  #=> "a-b-c"
