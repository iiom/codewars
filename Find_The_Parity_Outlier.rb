# You are given an array (which will have a length of at least 3, but could be
#   very large) containing integers. The array is either entirely comprised of
#   odd integers or entirely comprised of even integers except for a single
#   integer N. Write a method that takes the array as an argument and returns
#   this "outlier" N.
#
# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)
#
# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# z объявление двух пустых массивов в один записывает нечетные значени в другоё четные.
# Сравнение их количества элементов
def find_outlier(integers)
  od = []
  eve = integers
  eve.each {|e| od.push(e) if e%2 != 0}
  eve -= od
  eve.count < od.count ? eve[0] : od[0]
end

p find_outlier(array = [2, 4, 0, 100, 4, 11, 2602, 36])
# find_outlier(array = [160, 3, 1719, 19, 11, 13, -21])
# find_outlier(array = [0, 1, 2])
# find_outlier(array = [1, 2, 3])
# find_outlier(array = [2,6,8,10,3])

# метод partition вернул два массива по блоку нечетных чисел и чётныхю сравнение длины массива с 1
# def find_outlier(integers)
#   odd, even = integers.partition(&:odd?)
#   odd.length > 1 ? even[0] : odd[0]
# end
#
# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end
#
# def find_outlier(integers)
#   outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
#   integers.find(&outlier)
# end
#
# def find_outlier(integers)
#   integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
# end

# each Выполняет код в block для каждого элемента массива array, передавая в
# блок текущий элемент в качестве параметра.   array.each {|item| block }  #=> array

# partition Возвращает два массива. Первый содержит элементы enum, для которых
# результат обработки блока является true, а второй - все остальные элементы enum.
# num.partition {| obj | block }  => [ true_array, false_array ]

# find/ detect ==> Передаёт в указанный блок каждый элемент коллекции enum. Возвращает первый
# элемент enum, для которого результат выполнения block не является false.
# Если не найдено ни одного соответствия, возвращается значение
# параметра ifnone (если определён) либо nil
