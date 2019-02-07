MORSE_SYMB = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--..",
    " " => " ",
    "SOS" => "...---...",
    "." => ".-.-.-",
    "!" => "-.-.--"
}

def decodeMorse(morseCode)
  split_w = morseCode.strip.split(/ /)
  result = []
  split_w.map do |letter|
    result << MORSE_SYMB.key(letter)
  end
  p result
  result.join(" ").split("  ").map{|i| i.gsub(/\s+/, "")}.join(" ").upcase
end

def encodeMorse(str)
  result = []
  words = str.downcase.split("")
  words.map do |letter|
    result << MORSE_SYMB.values_at(letter)
  end
  result.join(" ")
end

# best from kata
# def decodeMorse(morseCode)
#   morseCode.strip.split('   ').map {|w| w.split.map{|g| MORSE_CODE[g]}.join}.join(' ')
# end


# puts("===============================================")
# puts "encodeMorse(\"q\") == \"--.-\": (#{encodeMorse("q") == "--.-"})"
# puts "encodeMorse(\"cat\") == \"-.-. .- -\": #{(encodeMorse("cat") == "-.-. .- -")}"
# puts "encodeMorse(\"cat in hat\") == \"-.-. .- -  .. -.  .... .- -\": " +
#          "#{(encodeMorse("cat in hat") == "-.-. .- -  .. -.  .... .- -")}"
#
# puts("===============================================")
p decodeMorse(".... . -.--   .--- ..- -.. .")
p decodeMorse("   .  .")
p encodeMorse("HEY JUDE")