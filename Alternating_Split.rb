# For building the encrypted string:
# Take every 2nd char from the string, then the other chars, that are not every 2nd char, and concat them as new String.
# Do this n times!
# Examples:
# "This is a test!", 1 -> "hsi  etTi sats!"
# "This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"


# моё
def encrypt(text, n)
  return text if n <= 0
  # возвращаем массивы символов по по чётным и не четным индексам и потом их складываем
  arr1 = text.chars.select.with_index {|_, idx| idx.odd?}
  arr2 = text.chars.select.with_index {|_, idx| idx.even?}
  encrypt((arr1 + arr2).join, n - 1)
end

def decrypt(encrypted_text, n)
  return encrypted_text if n <= 0
  # делим защифрованную строку на двое и в разные массивы и потом их сшиваем
  midpoint = encrypted_text.length / 2
  arr1 = encrypted_text[0...midpoint].chars
  arr2 = encrypted_text[midpoint..-1].chars
  decrypt(arr2.zip(arr1).join, n - 1)
end

############################################################################
# решения с каты:
# лучшее
def encrypt text, n
  n.times.reduce(text){|y,_|y.scan(/(.)(.)?/).transpose.reverse.join} rescue text
end

def decrypt text, n
  n.times.reduce(text){|y,_|y.scan(/(?=.{#{y.size/2}}(.))(.)/).join[0...y.size]} rescue text
end
####################################################################################

def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end
################################################################################

# решения с каты:
def encrypt(text, n)
  return text if n <= 0 or text.nil?
  n.times do
   list = text.scan /(.)(.?)/
    o1 = []
    o2 = []
    list.map do |x, y|
      o1 << x
      o2 << y
    end
    text = o2.join + o1.join
  end
  return text
end

def decrypt(encrypted_text, n)
  return encrypted_text if n <= 0 or encrypted_text.nil?
  m = encrypted_text.size# / 2
  n.times do
    text = []
    m.times do |i|
      text << encrypted_text[m + i]
      text << encrypted_text[i]
    end
    text << encrypted_text[-1] if encrypted_text.size % 2 == 1
    encrypted_text = text.join
  end
  return encrypted_text
end
######################################################################################
#
# chars - Возвращает массив, содержащий символы строки, из которой вызывается метод
# "hello".chars            #-> ["h", "e", "l", "l", "o"]
#
# select Возвращает массив, содержащий все элементы enum, для которых результат обработки
# block не является false (см.также Enumerable#reject).
# enum.find_all {| obj | block }  => array
# enum.select   {| obj | block }  => array
# (1..10).find_all {|i|  i % 3 == 0 }   #=> [3, 6, 9]
# (1..10).select {|i|  i % 3 == 0 }   #=> [3, 6, 9]
#
# with_index принимает необязательный параметр для смещения начального индекса.
# each_with_index делает то же самое, но не имеет необязательного начального индекса.
#
# # join Возвращает строку, созданную путем преобразования каждого элемента
# # массива в строку, разделенных строкой     ["a", "b", "c" ].join("-")  #=> "a-b-c"
#
# zip Преобразует аргументы в массивы (при помощи методаto_a). Объединяет каждый элемент
# массива array с соответствующим массивом, переданным в качестве аргумента. В результате
# этого создается двумерный массив с array.size строками и сn столбцами, гдеn — максимальная
# из длин аргументов-массивов. Если длина какого либо из аргументов-массивов меньшеn,
# то он расширяется до длиныn (дополняетсяnil). Если задан блок, то получаемые массивы
# передаются в блок в качестве параметра, иначе — возвращается двумерный массив.
# Обычно используется совместно с методом assoc, то естьzip подготавливает для него массив,
# по которому будет осуществляться ассоциация
#array.zip(arg, ...)                   #=> an_array
# array.zip(arg, ...) {| arr | block }  #=> nil
# a = [4, 5, 6]
# b = [7, 8, 9]
# [1,2,3].zip(a, b)  #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# [1,2].zip(a,b)     #=> [[1, 4, 7], [2, 5, 8]]
# a.zip([1,2],[8])   #=> [[4,1,8], [5,2,nil], [6,nil,nil]]
#
# reduce или inject это метод который обрабатывает элементы enum применяя к ним блок,
# принимающий два параметра - аккумулятор (memo) и обрабатываемый элемент. Комбинирует все
# элементы в enum, применяя бинарную операцию, переданную в виде блока или символа в метод.
# Если явно не указано начальное значение для memo, то первый элемент коллекции используется
# в качестве начального значения memo.
#
# scan находит все указанные подстроки и возвращает их в виде массива строк.
# В данном примере, метод .size считает количество элементов массива, возвращаемого .scan
# string = "жыло-было шыбко шыпящее жывотное"
# string.scan("шы")                                  #=> ["шы", "шы"]
# string.scan("шы").size                             #=> 2
#
# # reverse - Возвращает новый массив, в котором элементы массива array стоят в обратном порядке.
#
# transpose — транспонирование массива. Еси представить двуметный массив в виде таблицы,
# где вложенные массивы являются столбцами, то метод #transpose предоставляет возможность
# изменьсть структуру массива, на такую, где столбцы преобразуются в стоки. Словами объяснить
# это сложновато, вам следует взглянуть на пример, чтобы понять лучше:
# # a = [[10,11,12],[20,21,22]]
# a.transpose #=> [[10, 20], [11, 21], [12, 22]]
# Вместо двух столбцов по три строки образовалось три строки по два столбца.
#
# drop — метод используется для возвращения нового массива с удаленным N — числом элементов с
# начала массива, пример:
# a = [1,2,3,4,5,"bingo"]
# a.drop(3) #=> [4, 5, "bingo"]
# a.drop(a.size-1) #=> ["bingo"]
# a #=> [1, 2, 3, 4, 5, "bingo"]
#
# compact — данный метод позволяет удалить все элементы массив значение которых nil, пример:
# a = []
# a[0] = 1 #=> 1
# a[5] = 2 #=> 2
# a #=> [1, nil, nil, nil, nil, 2]
# a.compact #=> [1, 2]
# a #=> [1, nil, nil, nil, nil, 2]
# a.compact! #=> [1, 2]
# a #=> [1, 2]
#
# take — сей метод получает в качестве аргумента число N и возвращет N — первых элементов
# массива, пример:
# [1,5,6,7,10].take(3) #=> [1, 5, 6]