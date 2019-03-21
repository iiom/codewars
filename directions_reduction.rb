def dirReduc(arr)

  samples = ["NORTHSOUTH", "SOUTHNORTH", "EASTWEST", "WESTEAST"]
  c = arr.size
  i = 0

  while i <= c do
    arr[i + 1].nil? ? (tmp = arr[i]) : (tmp = arr[i] + arr[i + 1])
    if samples.include?(tmp)
      arr.delete_at(i)
      arr.delete_at(i)
      i > 2 ? i -= 2 : i = 0
    else
      i += 1
    end
  end
  arr
end


p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"])


# from kata
# OPPOSITE = {
#   "NORTH" => "SOUTH",
#   "SOUTH" => "NORTH",
#   "EAST"  => "WEST",
#   "WEST"  => "EAST"
# }

# def dirReduc(arr)
#   arr.each_with_object([]) { |direction, path|
#     path.last == OPPOSITE[direction] ? path.pop : path.push(direction)
#   }
# end



# POLAR = {
#   'NORTH' => 'SOUTH',
#   'SOUTH' => 'NORTH',
#   'EAST'  => 'WEST',
#   'WEST'  => 'EAST'
# }

# def dirReduc(arr)
#   res = []
#   arr.each do |dir|
#     POLAR[dir] == res.last ? res.pop : res.push(dir)
#   end
#   res
# end


# def dirReduc arr
#   d = [['NORTH', 'SOUTH'], ['EAST', 'WEST']]
#   arr.reduce([]){|y, x| d.include?([y.last.to_s, x].sort) ? y[0..-2] : y << x }
# end




