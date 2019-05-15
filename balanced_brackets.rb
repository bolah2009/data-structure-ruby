require_relative 'stack'

def balanced_brackets?(string)
  # your code here
  stack = Stack.new
  brackets = string.split('').select { |i| p /\W/.match(i) }
  brackets.each do |i|
    if (i == '(') || (i == '[') || (i == '{')
      stack.push(i)
    else
      return false if stack.empty?

      top = stack.pop
      if ((top == '[') && (i != ']')) || ((top == '(') && (i != ')')) || ((top == '{') && (i != '}'))
        return false
      end
    end
  end
  stack.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
