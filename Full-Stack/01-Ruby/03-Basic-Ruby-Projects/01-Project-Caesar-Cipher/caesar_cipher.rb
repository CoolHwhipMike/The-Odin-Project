# frozen_string_literal: true

puts 'Enter the phrase to encode:'
user_string = gets.chomp

puts 'Enter the shift value:'
user_shift = gets.chomp.to_i

user_string_array = user_string.bytes
shifted_string_array = []

user_string_array.each do |element|
  if element >= 65 && element <= 90
    element += user_shift
    element = 65 + (element - 91) if element > 90
    element = 90 + (element - 64) if element < 65
  end

  if element >= 97 && element <= 122
    element += user_shift
    element = 97 + (element - 123) if element > 122
    element = 122 + (element - 96) if element < 97
  end

  shifted_string_array.push(element.chr)
end

puts "Your phrase has been shifted by #{user_shift}."
puts user_string
puts shifted_string_array.join('')
