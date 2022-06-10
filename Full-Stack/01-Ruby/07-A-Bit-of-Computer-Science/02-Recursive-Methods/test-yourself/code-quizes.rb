# Define a recursive function that finds the factorial of a number.
# def factorial(number)
#   if number.zero?
#     1
#   else
#     number * factorial(number - 1)
#   end
# end
#
# puts factorial(5)
# puts factorial(10)
# puts factorial(20)

# Define a recursive function that returns true if a string is a palindrome and false otherwise.
# def palindrome(string)
#   index = 0
#   rev_index = -1
#
#   while index < string.length
#     return false unless string[index].eql?(string[rev_index])
#
#     index += 1
#     rev_index -= 1
#   end
#
#   true
# end
#
# def palindrome_recursive(string)
#   return false unless string[0].eql?(string[string.length - 1])
#
#   palindrome_recursive(string[1, string.length - 1])
#   true
# end
#
# puts palindrome('thisisfalse')
# puts palindrome('lionoil')
# puts palindrome_recursive('thisisfalse')
# puts palindrome_recursive('lionoil')

# Define a recursive function that takes an argument n and prints
# "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..., "no more bottles of beer on the wall".
# def bottles(number)
#   while number > 0
#     puts "#{number} bottles of beer on the wall"
#     number -= 1
#   end
#   puts 'No more bottles of beer on the wall'
# end
#
# def bottles_recursive(number)
#   if number.positive?
#     puts "#{number} bottles of beer on the wall"
#     bottles_recursive(number - 1)
#   else
#     puts 'No more bottles of beer'
#   end
# end
#
# bottles(0)
# bottles(5)
# bottles(10)
# bottles_recursive(0)
# bottles_recursive(5)
# bottles_recursive(10)

# Define a recursive function that takes an argument n and returns the fibonacci value of that position.
# The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.
# def fib(number)
#   count = 1
#   f0 = 0
#   f1 = 1
#
#   while count < number
#     fn = f1 + f0
#     f0 = f1
#     f1 = fn
#     count += 1
#   end
#
#   fn
# end
#
# def fib_recursive(number, count = 1, f0 = 0, f1 = 1, fn = 1)
#   return fn if count == number
#
#   fn = f1 + f0
#   f0 = f1
#   f1 = fn
#   count += 1
#   fib_recursive(number, count, f0, f1, fn)
# end
#
# puts fib(5)
# puts fib(6)
# puts fib(50)
# puts fib_recursive(5)
# puts fib_recursive(6)
# puts fib_recursive(50)

# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4]
# and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].
# def flatten_recursive(arr, new_arr = [])
#   arr.each do |element|
#     if element.is_a?(Array)
#       flatten_recursive(element, new_arr)
#     else
#       new_arr.push(element)
#     end
#   end
#   new_arr
# end
#
# p flatten_recursive([[1, 2], [3, 4]])
# p flatten_recursive([[1, [8, 9]], [3, 4]])

# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.
# roman_mapping = {
#   1000 => "M",
#   900 => "CM",
#   500 => "D",
#   400 => "CD",
#   100 => "C",
#   90 => "XC",
#   50 => "L",
#   40 => "XL",
#   10 => "X",
#   9 => "IX",
#   5 => "V",
#   4 => "IV",
#   1 => "I"
# }
# # I had to look this up but I think I understand most of it.
# def integer_to_roman(roman_mapping, number, result = '')
#   # Base case, when the number is fully converted the result is returned.
#   return result if number.zero?
#
#   # First, loop through the keys for the hash and use each key as a divisor.
#   roman_mapping.each_key do |divisor|
#     # divmod returns a quotient and remainder
#     quotient, modulus = number.divmod(divisor)
#     # If the key is larger than the number the quotient will be 0 and thus not push anything onto the result
#     result << roman_mapping[divisor] * quotient
#     # Function is called again using what's left of the number to continue
#     return integer_to_roman(roman_mapping, modulus, result) if quotient.positive?
#   end
# end
#
# puts integer_to_roman(roman_mapping, 10)
# puts integer_to_roman(roman_mapping, 375)
# puts integer_to_roman(roman_mapping, 2750)

# Use the roman_mapping hash to define a recursive method that converts a Roman numeral to an integer.
# roman_mapping = {
#   "M" => 1000,
#   "CM" => 900,
#   "D" => 500,
#   "CD" => 400,
#   "C" => 100,
#   "XC" => 90,
#   "L" => 50,
#   "XL" => 40,
#   "X" => 10,
#   "IX" => 9,
#   "V" => 5,
#   "IV" => 4,
#   "I" => 1
# }
# I also looked this up.
# def roman_to_integer(roman_mapping, str, result = 0)
#   # Since the roman numeral is a string we cut off the parts that are converted. If the string is empty the whole thing has been converted.
#   return result if str.empty?
#
#   # Again, iterate through the hask keys and check to see if one of the keys is at the beginning of the string.
#   # This will start with the largest value i.e. 1000 rather than 100. When we have a match, that key is used to add the
#   # value to the result. Then remove the converted section from the roman numeral and call the method again to operate on the new roman numeral.
#   roman_mapping.keys.each do |roman|
#     if str.start_with?(roman)
#       result += roman_mapping[roman]
#       str = str.slice(roman.length, str.length)
#       return roman_to_integer(roman_mapping, str, result)
#     end
#   end
# end
#
# puts roman_to_integer(roman_mapping, 'IV')
# puts roman_to_integer(roman_mapping, 'MCM')
# puts roman_to_integer(roman_mapping, 'MMDCDXLI')
