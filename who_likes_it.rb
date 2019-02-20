def likes(names)
  return "no one likes this" if names.size == 0
  return "#{names[0]} likes this" if names.size == 1
  return "#{names[0]} and #{names[1]} like this" if names.size == 2
  return "#{names[0]}, #{names[1]} and #{names[2]} like this" if names.size == 3
  return "#{names[0]}, #{names[1]} and #{names.size - 2} others like this" if names.size > 3
end


# Лучшее с каты
# def likes(names)
#   x = ["no one likes this", "%s likes this", "%s and %s like this", "%s, %s and %s like this", "%s, %s and #{names.count-2} others like this"]
#   return x[[names.count,4].min] % names
# end
#
#
# def likes(names)
#   phrase = names.count > 1 ? " like this" : " likes this"
#   case names.count
#     when 0 then "no one" + phrase
#     when 1 then names[0] + phrase
#     when 2 then "#{names[0]} and #{names[1]}" + phrase
#     when 3 then "#{names[0]}, #{names[1]} and #{names[2]}" + phrase
#     else "#{names[0]}, #{names[1]} and #{names.count-2} others" + phrase
#   end
# end

p likes [] #// must be "no one likes this"
p likes ["Peter"] #// must be "Peter likes this"
p likes ["Jacob", "Alex"] #// must be "Jacob and Alex like this"
p likes ["Max", "John", "Mark"] #// must be "Max, John and Mark like this"
p likes ["Alex", "Jacob", "Mark", "Max"] #// must be "Alex, Jacob and 2 others like this"