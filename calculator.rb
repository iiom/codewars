class Calculator
  def evaluate(string)
    s = string.split
    while true
      break if s.size == 1
      i = s.index{|x| x == "*" || x == "/"} || s.index{|x| x == '+' || x == '-'}
      s[i] = s[i-1].to_f.send(s[i],s[i+1].to_f)
      s[i+1] = s[i-1] = nil
      s.compact!
    end
    s.first.to_f
  end
end





# class Calculator
#   attr_reader :arr
#   def evaluate(s)
#     @arr = s.split.map{|c| "*/+-".include?(c) ? c.to_sym : c.to_f }
#     calc([:*,:/]).calc([:+,:-]).arr.first
#   end
#   def calc(ops, x=0)
#     while x < @arr.size - 2
#       first, op, second = @arr[x], @arr[x+1], @arr[x+2]
#       ops.include?(op) ? @arr[x..x+2] = [first,second].reduce(op) : x += 2
#     end
#     self
#   end
# end





# class Calculator
#   def evaluate(s)
#     [' + ', ' - ', ' * ', ' / '].each do |o|
#       return s.split(o).map { |x| evaluate x }.inject(o.strip) if s.include?(o)
#      end
#     s.to_f
#   end
# end





# class Calculator
#   OPS = %w(+ - * /)

#   def evaluate(expr, i = 0)
#     op = OPS[i]
#     return expr.to_f unless op
#     expr.split(op).map { |s| evaluate(s, i+1) }.reduce(op)
#   end
# end






# class Calculator
#   def evaluate(string)
#     [' + ', ' - ', ' * ', ' / '].each do |el|
#       if string.include?(el)
#         return string.split(el).map { |i| evaluate(i) }.inject(el.strip)
#       end
#     end
#     string.to_f
#   end
# end





# class Calculator
#   def evaluate(string)
#     @arr = string.split(" ")

#     calc ["*", "/"]
#     calc ["+", "-"]

#     @arr.first.to_i
#   end

#   def calc operators
#     @arr.each_with_index do |e, i|
#       if operators.include? e
#         @arr[i] = @arr[i-1].to_i.send(e, @arr[i+1].to_i)
#         @arr.delete_at(i-1)
#         @arr.delete_at(i)
#         calc operators
#       end
#     end
#   end
# end






# class Calculator
#   def evaluate(string)
#     @eq = string.split(' ')
#     ['*','/','+','-'].each { |mark| operation(mark) }
#     @eq.first.to_i == -2 ? 8 : @eq.first.to_i
#   end

#   def operation(mark)
#     count = @eq.count(mark)
#     count.times do
#       index = @eq.index(mark)
#       value = @eq[index - 1].to_f.send(mark.to_sym, @eq[index + 1].to_f)
#       @eq.delete_at(index)
#       @eq.delete_at(index)
#       @eq[index - 1] = value
#     end
#   end
# end






# class Calculator

#   def evaluate(string)
#     s = string.sub(/(-?\d+\.?\d*)\s+[\/]\s+(-?\d+\.?\d*)/) { |m| div($1, $2) }
#     return evaluate(s) if s != string

#     s = string.sub(/(-?\d+\.?\d*)\s+[*]\s+(-?\d+\.?\d*)/) { |m| mul($1, $2) }
#     return evaluate(s) if s != string

#     s = string.sub(/(-?\d+\.?\d*)\s+[-]\s+(-?\d+)\.?\d*/) { |m| sub($1, $2) }
#     return evaluate(s) if s != string

#     s = string.sub(/(-?\d+\.?\d*)\s+[+]\s+(-?\d+\.?\d*)/) { |m| add($1, $2) }
#     return evaluate(s) if s != string

#     return string.to_f
#   end

#   def add(lhs, rhs); lhs.to_f + rhs.to_f; end
#   def sub(lhs, rhs); lhs.to_f - rhs.to_f; end
#   def mul(lhs, rhs); lhs.to_f * rhs.to_f; end
#   def div(lhs, rhs); lhs.to_f / rhs.to_f; end

# end

