def mix(s1, s2)
  str1 = s1.gsub(/[A-Z]|\W/, '').split('')
  str2 = s2.gsub(/[A-Z]|\W/, '').split('')
  ss = (str1 + str2).uniq.select {|i| s1.count(i) > 1 || s2.count(i) > 1}
  ss.map! do |i|
    if s1.count(i) > s2.count(i)
     "1:#{i * s1.count(i)}"
    elsif s1.count(i) < s2.count(i)
      "2:#{i * s2.count(i)}"
    else
     "=:#{i * s1.count(i)}"
    end
  end
  ss.sort_by {|x| [-x.size, x]}.join("/")
end

# p mix("Are they here", "yes, they are here")
# p "2:eeeee/2:yy/=:rr/=:hh"
# puts
# p mix("looping is fun but dangerous", "less dangerous than coding")
# p "1:ooo/1:uuu/2:sss/=:nnn/1:ii/2:aa/2:dd/2:ee/=:gg"
# puts
# p mix(" In many languages", " there's a pair of functions")
# p "1:aaa/1:nnn/1:gg/2:ee/2:ff/2:ii/2:oo/2:rr/2:ss/2:tt"
# puts
# p mix("Lords of the Fallen", "gamekult")
# p "1:ee/1:ll/1:oo"
# puts
# p mix("A generation must confront the looming ", "codewarrs")
# p "1:nnnnn/1:ooooo/1:tttt/1:eee/1:gg/1:ii/1:mm/=:rr"

# # rubular.com

# kata
# def mix(s1, s2)
#   (s1 + s2).scan(/[a-z]/).uniq.map { |char|
#     [char, [s1.count(char), s2.count(char)]]
#   }.select { |_, counts|
#     counts.max > 1
#   }.map { |char, (s1_count, s2_count)|
#     case s1_count <=> s2_count
#     when  1 then "1:#{char * s1_count}"
#     when  0 then "=:#{char * s1_count}"
#     when -1 then "2:#{char * s2_count}"
#     end
#   }.sort_by { |string|
#     [-string.length, string]
#   }.join("/")
# end

