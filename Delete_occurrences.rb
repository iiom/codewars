# Enough is enough!
# Alice and Bob were on a holiday. Both of them took many pictures of the places
# they've been, and now they want to show Charlie their entire collection. However,
# Charlie doesn't like this sessions, since the motive usually repeats. He isn't
# fond of seeing the Eiffel tower 40 times. He tells them that he will only sit
# during the session if they show the same motive at most N times. Luckily, Alice
# and Bob are able to encode the motive as a number. Can you help them to remove
# numbers such that their list contains each number only up to N times, without
# changing the order?
#
# Task
# Given a list lst and a number N, create a new list that contains each number of
# lst at most N times without reordering. For example if N = 2, and the input is
# [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would
# lead to 1 and 2 being in the result 3 times, and then take 3, which leads
# to [1,2,3,1,2,3].
#
# Example
#   delete_nth ([1,1,1,1],2) # return [1,1]
#
#   delete_nth ([20,37,20,21],1) # return [20,37,21]

def delete_nth(order,max_e)
  #z
  # each перебирает каждый элемент массива order. добавить его в новый массив res
  # за исключением когда счётчик этого элемента будет равен числу за скобками
  res = []
  order.each { |num| res << num unless res.count(num) == max_e }
  p res

  # другой вариант записи
  # p order.select.with_index { |x, index| order[0..index].count(x) <= max_e }


# то же самое через хеш
#     result = []
#     hash = Hash.new(0)
#     order.each do |a|
#     hash[a] += 1
#     result << a if hash[a] <= max_e
# end
#   result




# лучшее решение по kate
#   hash = Hash.new(0)
#   order.reject { |a| (hash[a] += 1) > max_e }


# p order.delete_if {|i| order.count(i) > max_e}   # порядок не сохраняется
end
delete_nth(array = [20,37,20,21], 1)



# reject возвращает массив, содержащий все элементы enum, для которых результат обработки
# block является false (см.также Enumerable#find_all). Иными словами выталкивает
# из массива все элементы обработав которые блок вернет истину. Избавиться от свидетелей.
# enum.reject {| obj | block }  => array
# (1..10).reject {|i|  i % 3 == 0 }   #=> [1, 2, 4, 5, 7, 8, 10]

# select возвращает массив, содержащий все элементы enum, для которых результат
# обработки block не является false (см.также Enumerable#reject).
# enum.find_all {| obj | block }  => array
# enum.select   {| obj | block }  => array
# (1..10).find_all {|i|  i % 3 == 0 }   #=> [3, 6, 9]
