def top_3_words(text)
  return [] unless text =~ /[a-zA-Z]/
  str = text.downcase.gsub(/[.,:\/]/, '')
  hash = {}
  str.split(' ').each do |elem|
    if hash.keys.include?(elem)
      hash[elem] += 1
    else
      hash[elem] = 1
    end
  end
  hash.sort_by {|_, v| v}.reverse.map! {|i| i.first}.first(3)
end

p top_3_words("a a a  b  c c  d d d d  e e e e e")
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
p top_3_words("  //wont won't won't ")