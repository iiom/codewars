def convert(input, source, target)
  n = input.chars.inject(0) { |s, c| s * source.size + source.index(c) }
  s = ''
  begin
    n, i = n.divmod(target.size)
    s = target[i] + s
  end while n > 0
  s
end