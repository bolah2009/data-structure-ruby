def transpose(string)
  # your code here
  gn = Regexp.new('gn', true)
  transpose_string = string
  while gn.match(transpose_string)
    i = 0
    while i + 1 < string.size && gn.match(transpose_string)
      transpose_string[i..(i + 1)] = 'ng' if transpose_string[i..(i + 1)] == 'gn'

      i += 1
    end
  end
  transpose_string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
