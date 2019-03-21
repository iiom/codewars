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


