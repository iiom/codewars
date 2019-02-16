def removNb(n)
  arr_sum = (1..n).to_a.sum
  results = []
  (1..n).each do |elem|
    s ||= 0
    s = (arr_sum - (elem + s)) / elem
    results << [s, elem] << [elem, s] if elem * s == arr_sum - (elem + s)
  end
  results.sort!
end

p removNb(26)
p removNb(100)