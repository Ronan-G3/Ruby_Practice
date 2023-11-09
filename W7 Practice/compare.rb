def ascii(stringy)
  stringy.each_byte {|c| puts c}
end

str_a = "foobar"
str_b = "foobas"

ascii(str_a)
puts "\n"
ascii(str_b)
puts "\n"

p str_a == str_a
p str_b == str_b

p str_a < str_b
p str_a > str_b
p str_b < str_a

p str_a <=> str_b   # returns -1 if str_a is less than str_b, 0 if equal, 1 if str_a is greater than str_b
p str_a <=> str_a
p str_b <=> str_b