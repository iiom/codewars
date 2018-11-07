# Your task is to construct a building which will be a pile of n cubes. The cube at the bottom
# will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top
# which will have a volume of 1^3.
# You are given the total volume m of the building. Being given m can you find the number
# n of cubes you will have to build?
# The parameter of the function findNb (find_nb, find-nb, findNb) will be an integer m
# and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n
# exists or -1 if there is no such n.
#
# Examples:
# findNb(1071225) --> 45
# findNb(91716553919377) --> -1

# моё
def find_nb(m)
  n = 0
  while m.positive?
    n += 1
    m -= n**3
  end
  m.zero? ? n : -1
end

# решение с каты
# def find_nb(m)
#   total = 0
#   counter = 1
#   while total != m
#     total += counter ** 3
#     counter += 1
#   end
#   return counter - 1
# end
#
# def find_nb(m)
#   n, sum = 1, 0
#   while sum < m
#     sum += n**3
#     n += 1
#   end
#   sum > m ? -1 : n - 1
# end

# def find_nb(m)
#   check = Math.sqrt(2 * Math.sqrt(m)).floor #round  truncate  to_i
#   (check * (check + 1)/2)**2 == m ? check : -1
# end

# def find_nb(m)
#   n = ((m * 4)**0.25).to_i
#   (n**2) * ((n + 1)**2) / 4 == m ? n : -1
# end

# def find_nb(m)
#     limit = (Math.sqrt(2) * m ** 0.25 + 1).to_i
#     (0..limit).each do |i|
#         if (i * i * (i + 1) * (i + 1) == 4 * m) then
#             return i
#         end
#     end
#     return -1
# end

# def find_nb(m)
#     n = i = 0
#     n += (i += 1) ** 3 while n < m
#     n == m ? i : -1
# end

# def find_nb(m)
#   lambda{|res| (res*(res+1)/2)**2==m ? res : -1}.((((1+8*(m**0.5).to_i)**0.5-1)/2).to_i)
# end

# def find_nb(m)
# p  check = Math.sqrt(2 * Math.sqrt(m)).round
# p  (check * (check + 1)/2)**2 == m ? check : -1
# end

# def find_nb(m)
#   total = 1
#   size = 1
#   while true do
#     return size if total == m
#     return -1 if m < total
#     size += 1
#     total += size ** 3
#   end
# end


p find_nb(1071225)
