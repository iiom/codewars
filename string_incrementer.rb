def increment_string(input)
  s = input.gsub(/\d+\z/, '')
  n = input.scan(/\d+\z/).empty? ? ['0'] : input.scan(/\d+\z/)
  s + (n.first.to_i + 1).to_s.rjust(n.first.size, '0')
end



# def increment_string(input)
#   input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
# end