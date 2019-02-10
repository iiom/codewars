require 'prime'

def gap(g, m, n)
  while m < n
    if Prime.prime?(m)
      next_number = m + 1
      while next_number <= m + g
        if Prime.prime?(next_number) && g == next_number - m
          return [ m, next_number ]
        elsif Prime.prime?(next_number) && g != next_number-m
          break
        end
        next_number += 1
      end
      m += 1
    else
      m += 1
    end
  end

  return nil
end

# best from kata
# require 'prime'
#
# def gap(g, m, n)
#   last_prime = nil
#   (m..n).each do |number|
#     if Prime.prime?(number)
#       return [last_prime, number] if last_prime && number - last_prime == g
#       last_prime = number
#     end
#   end
#   nil
# end
#

# require 'prime'
#
# def gap(gap, low, high)
#   Prime.each(high).select{|prime| prime >= low}.each_cons(2).find{|(a,b)| b-a == gap }
# end

# require 'prime'
#
# def gap(g,m,n)
#   Prime.take_while { |i| i<=n }.reject { |i| i<m }.each_cons(2).find { |a,b| b-a == g }
# end
#