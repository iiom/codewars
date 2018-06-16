# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace the
# missing second character of the final pair with an underscore ('_').
#
# Examples:
#
# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']

def solution(str)
  if str.size.odd? # если не чётное
    str << '_'     # то добавить в конец подчёркивание и при разбиении оно будет с подчеркиванием
    str.scan(/../)
  else
    str.scan(/../) # если чётное просто разбить по два
  end
end
p solution('abcds')


# best
# def solution str
#   (str + '_').scan /../
# end



# # scan Обе формы вызова последовательно просматривают str на предмет совпадения
# с шаблоном (который может быть как строкой, так и правилом. Каждое совпадение
#   записывается в массив (для первой формы вызова) или передается в блок
#   (для второй формы вызова). Если шаблон (который является правилом) не содержит
#   группировок, то каждое совпадение записывается в отдельный элемент
#   (для первой формы вызова) или передается параметром блоку (для второй формы вызова).
#   Также возможно использование специальной переменной $&, которая содержит
#   результат последнего совпадения (актуально при использовании второй формы вызова).
#   Если шаблон содержит группировки, то каждое совпадение разбивается на совпадения
#   группировкам (получается двумерный массив).

# str.scan(pattern)                         #-> array
# str.scan(pattern) {|match, ...| block }   #-> str

# a = "cruel world"
# a.scan(/\w+/)        #-> ["cruel", "world"]
# a.scan(/.../)        #-> ["cru", "el ", "wor"]
# a.scan(/(...)/)      #-> [["cru"], ["el "], ["wor"]]
# a.scan(/(..)(..)/)   #-> [["cr", "ue"], ["l ", "wo"]]

# a.scan(/\w+/) {|w| print "<<#{w}>> " }
# print "\n"
# a.scan(/(.)(.)/) {|a,b| print b, a }
# print "\n"
